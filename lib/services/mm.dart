import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' show Response;
import 'package:http/http.dart' as http;
import 'package:rational/rational.dart';

import '../app_config/app_config.dart';
import '../model/balance.dart';
import '../model/base_service.dart';
import '../model/best_order.dart';
import '../model/buy_response.dart';
import '../model/coin.dart';
import '../model/coin_to_kick_start.dart';
import '../model/disable_coin.dart';
import '../model/error_string.dart';
import '../model/get_balance.dart';
import '../model/get_best_orders.dart';
import '../model/get_buy.dart';
import '../model/get_cancel_order.dart';
import '../model/get_convert_address.dart';
import '../model/get_disable_coin.dart';
import '../model/get_enable_coin.dart';
import '../model/get_enable_slp_coin.dart';
import '../model/get_enable_tendermint.dart';
import '../model/get_enabled_coins.dart';
import '../model/get_import_swaps.dart';
import '../model/get_max_taker_volume.dart';
import '../model/get_min_trading_volume.dart';
import '../model/get_orderbook.dart';
import '../model/get_orderbook_depth.dart';
import '../model/get_priv_key.dart';
import '../model/get_public_key.dart';
import '../model/get_recent_swap.dart';
import '../model/get_recover_funds_of_swap.dart';
import '../model/get_rewards_info.dart';
import '../model/get_send_raw_transaction.dart';
import '../model/get_setprice.dart';
import '../model/get_swap.dart';
import '../model/get_trade_fee.dart';
import '../model/get_trade_preimage.dart';
import '../model/get_trade_preimage_2.dart';
import '../model/get_tx_history.dart';
import '../model/get_validate_address.dart';
import '../model/get_withdraw.dart';
import '../model/import_swaps.dart';
import '../model/orderbook.dart';
import '../model/orderbook_depth.dart';
import '../model/orders.dart' hide Match;
import '../model/priv_key.dart';
import '../model/public_key.dart';
import '../model/recent_swaps.dart';
import '../model/recover_funds_of_swap.dart';
import '../model/result.dart';
import '../model/rewards_provider.dart';
import '../model/rpc_error.dart';
import '../model/send_raw_transaction_response.dart';
import '../model/setprice_response.dart';
import '../model/swap.dart';
import '../model/trade_fee.dart';
import '../model/trade_preimage.dart';
import '../model/transactions.dart';
import '../model/version_mm2.dart';
import '../model/withdraw_response.dart';
import '../services/music_service.dart';
import '../utils/log.dart';
import '../utils/utils.dart';
import 'mm_service.dart';

ApiProvider MM = ApiProvider();

// AG: Planning to get rid of `res` and turn `MM` into a const:
//
//     const ApiProvider MM = const ApiProvider();
//
// ignore: non_constant_identifier_names
class ApiProvider {
  String url = 'http://localhost:${appConfig.rpcPort}';
  Response res;

  /// Reduce log noise
  int _lastMetricsLog = 0;

  Map<String, dynamic> _parseResponse(Response r) {
    if (r == null) throw Exception('Response is null for ${r.request.url}');

    final parsedBody = json.decode(r.body) as Map<String, dynamic>;
    final error = ErrorString.fromJson(parsedBody);
    if (error.error.isNotEmpty) throw removeLineFromMM2(error);

    if (parsedBody.containsKey('result') && parsedBody['result'] == null) {
      throw Exception('Response body result is null for ${r.request.url}');
    }

    return parsedBody;
  }

  /// https://github.com/KomodoPlatform/developer-docs/pull/171/files
  /// https://github.com/KomodoPlatform/atomicDEX-API/commit/a00c2863210ce9a262bb579a74249dbb04a94efc
  Future<List<dynamic>> batch(List<Map<String, dynamic>> batch,
      {http.Client client}) async {
    client ??= mmSe.client;
    final r = await client.post(Uri.parse(url), body: json.encode(batch));
    _assert200(r);
    _logRes('batch', r);

    return List<dynamic>.from(json.decode(r.body));
  }

  // ErrorString removeLineFromMM2(ErrorString errorString) {
  //   if (errorString.error.lastIndexOf(']') != -1) {
  //     errorString.error = errorString.error.substring(errorString.error.lastIndexOf(']') + 1).trim();
  //   }
  //   return errorString;
  // }

  Future<dynamic> cancelOrder(
    http.Client client,
    GetCancelOrder body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: getCancelOrderToJson(userBody.body))
            .then((Response r) => _logRes('cancelOrder', r))
            .then((Response res) => resultSuccessFromJson(res.body))
            .then(
              (ResultSuccess data) =>
                  data.result.isEmpty ? errorStringFromJson(res.body) : data,
            )
            .catchError(
              (dynamic e) => _catchErrorString(
                'cancelOrder',
                e,
                'Error on cancel order',
              ),
            ),
      );

  /// Returns converted address, or `null` if convertion failed
  Future<String> convertLegacyAddress({
    @required String address,
    @required String coin,
    http.Client client,
  }) async {
    if (await validateAddress(address: address, coin: coin) == null) {
      // address already valid
      return address;
    }

    client ??= mmSe.client;
    final userBody = await _assertUserpass(
      client,
      GetConvertAddress(
        from: address,
        coin: coin,
      ),
    );

    final r =
        await client.post(Uri.parse(url), body: jsonEncode(userBody.body));
    if (r.statusCode != 200) return null;

    final parsedBody = _parseResponse(r);

    return parsedBody['result']['address'];
  }

  Future<DisableCoin> disableCoin(GetDisableCoin req,
      {http.Client client}) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(client, req);
    final r =
        await client.post(Uri.parse(url), body: json.encode(userBody.body));
    _assert200(r);
    _logRes('disableCoin', r);

    final parsedBody = _parseResponse(r);

    return DisableCoin.fromJson(parsedBody);
  }

  String enableCoinImpl(Coin coin) {
    if (isErcType(coin))
      return json.encode(
        MmEnable(
          userpass: mmSe.userpass,
          coin: coin.abbr,
          txHistory: false,
          swapContractAddress: coin.swapContractAddress,
          fallbackSwapContract: coin.fallbackSwapContract,
          urls: List<String>.from(coin.serverList.map((e) => e.url)),
        ).toJson(),
      );
    if (coin?.protocol?.type == 'TENDERMINTTOKEN')
      return json.encode(
        MmTendermintTokenEnable(
          userpass: mmSe.userpass,
          coin: coin,
        ).toJson(),
      );
    if (coin?.protocol?.type == 'TENDERMINT')
      return json.encode(
        MmTendermintAssetEnable(
          userpass: mmSe.userpass,
          coin: coin,
        ).toJson(),
      );
    if (isSlpParent(coin))
      return json.encode(
        MmParentSlpEnable(
          userpass: mmSe.userpass,
          coin: coin,
        ).toJson(),
      );
    if (isSlpChild(coin))
      return json.encode(
        MmChildSlpEnable(
          userpass: mmSe.userpass,
          coin: coin,
        ).toJson(),
      );

    // https://developers.komodoplatform.com/basic-docs/atomicdex/atomicdex-api.html#electrum
    final electrum = <String, dynamic>{
      'method': 'electrum',
      'userpass': mmSe.userpass,
      'coin': coin.abbr,
      'servers': Coin.getServerList(coin.serverList),
      // limit the number of active connections to electrum servers to 1 to
      // reduce device load & request spamming
      'max_connected': 1,
      'mm2': coin.mm2,
      'tx_history': true,
      'required_confirmations': coin.requiredConfirmations,
      if (coin.matureConfirmations != null)
        'mature_confirmations': coin.matureConfirmations,
      'requires_notarization': coin.requiresNotarization ?? false,
      'address_format': coin.addressFormat,
      if (coin.swapContractAddress.isNotEmpty)
        'swap_contract_address': coin.swapContractAddress,
      if (coin.fallbackSwapContract.isNotEmpty)
        'fallback_swap_contract': coin.fallbackSwapContract,
      if (coin.bchdUrls != null) 'bchd_urls': coin.bchdUrls
    };
    final js = json.encode(electrum);
    Log('mm:251', js.replaceAll(RegExp(r'"\w{64}"'), '"-"'));
    return js;
  }

  Future<Balance> getBalance(GetBalance gb, {http.Client client}) async {
    // AG: HTTP handling is improved in this method.
    //     After using it for a while and seeing that it works as expected
    //     we should refactor the rest of the methods accordingly.

    client ??= mmSe.client;
    try {
      final userBody = await _assertUserpass(client, gb);
      final r = await userBody.client
          .post(Uri.parse(url), body: getBalanceToJson(userBody.body));
      _assert200(r);

      final parsedBody = _parseResponse(r);

      final Balance balance = Balance.fromJson(parsedBody);
      balance.camouflageIfNeeded();

      return balance;
    } catch (e) {
      throw _catchErrorString(
        'getBalance',
        e,
        'Error getting ${gb.coin} balance',
      );
    }
  }

  Future<BestOrders> getBestOrders(
    GetBestOrders request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final String body = getBestOrdersToJson(userBody.body);
      final response = await userBody.client.post(Uri.parse(url), body: body);
      _assert200(response);
      _logRes('getBestOrders', response);

      final parsedBody = _parseResponse(response);

      parsedBody['request'] = request;
      return BestOrders.fromJson(parsedBody);
    } catch (e) {
      return BestOrders(
        error: _catchErrorString('getOrderbookDepth', e, 'mm best_orders] $e'),
      );
    }
  }

  /// https://developers.komodoplatform.com/basic-docs/atomicdex/atomicdex-api.html#coins-needed-for-kick-start
  Future<dynamic> getCoinToKickStart(
    http.Client client,
    BaseService body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: baseServiceToJson(userBody.body))
            .then((Response r) => _logRes('getCoinToKickStart', r))
            .then<dynamic>(
              (Response res) => coinToKickStartFromJson(res.body),
            )
            .catchError(
              (dynamic e) => _catchErrorString(
                'getCoinToKickStart',
                e,
                'Error on get coin to kick start',
              ),
            ),
      );

  Future<List<dynamic>> getEnabledCoins({http.Client client}) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(
      client,
      GetEnabledCoins(),
    );

    final r =
        await client.post(Uri.parse(url), body: jsonEncode(userBody.body));
    _assert200(r);
    _logRes('getEnabledCoins', r);

    final parsedBody = _parseResponse(r);

    return parsedBody['result'].toList();
  }

  Future<dynamic> getImportSwaps(
    GetImportSwaps request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final response = await userBody.client
          .post(Uri.parse(url), body: getImportSwapsToJson(userBody.body));
      _assert200(response);
      _logRes('getImportSwaps', response);

      final parsedBody = _parseResponse(response);

      final importSwaps = ImportSwaps.fromJson(parsedBody);

      return importSwaps;
    } catch (e) {
      return _catchErrorString('getImportSwaps', e, 'mm import_swaps] $e');
    }
  }

  Future<Rational> getMaxTakerVolume(
    GetMaxTakerVolume request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final response = await userBody.client
          .post(Uri.parse(url), body: getMaxTakerVolumeToJson(userBody.body));
      _assert200(response);
      _logRes('getMaxTakerVolume', response);

      final parsedBody = _parseResponse(response);

      return fract2rat(parsedBody['result']);
    } catch (e) {
      throw _catchErrorString('getMaxTakerVolume', e, 'max_taker_vol] $e');
    }
  }

  /// Returns a parsed JSON of the MM metrics
  /// https://developers.komodoplatform.com/basic-docs/atomicdex/atomicdex-tutorials/atomicdex-metrics.html
  Future<dynamic> getMetricsMM2(BaseService body, {http.Client client}) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(client, body);
    final r = await userBody.client
        .post(Uri.parse(url), body: baseServiceToJson(userBody.body));
    _assert200(r);

    final now = DateTime.now().millisecondsSinceEpoch;
    if (now - _lastMetricsLog > 600 * 1000) {
      _lastMetricsLog = now;
      _logRes('getMetricsMM2', r);
    }

    final parsedBody = _parseResponse(r);

    return parsedBody;
  }

  Future<double> getMinTradingVolume(
    GetMinTradingVolume request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final response = await userBody.client
          .post(Uri.parse(url), body: getMinTradingVolumeToJson(userBody.body));
      _assert200(response);
      _logRes('getMinTradingVolume', response);

      final parsedBody = _parseResponse(response);

      return double.tryParse(parsedBody['result']['min_trading_vol'] ?? '');
    } catch (e) {
      throw _catchErrorString(
        'getMinTradingVolume',
        e,
        'mm min_trading_volume] $e',
      );
    }
  }

  Future<dynamic> getMyOrders(
    http.Client client,
    BaseService body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: baseServiceToJson(userBody.body))
            .then((Response r) => _logRes('getMyOrders', r))
            .then<dynamic>((Response res) => ordersFromJson(res.body))
            .catchError(
              (dynamic e) => _catchErrorString(
                'getMyOrders',
                e,
                'Error on get my orders',
              ),
            ),
      );

  Future<Orderbook> getOrderbook(
    http.Client client,
    GetOrderbook body,
  ) async {
    try {
      return await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: getOrderbookToJson(userBody.body))
            .then(
              (Response r) => _logRes('getOrderbook_api_providers:110', r),
            )
            .then<dynamic>((Response res) {
          _assert200(res);
          return orderbookFromJson(
            json.encode(json.decode(res.body)['result']),
          );
        }),
      );
    } catch (e) {
      Log('ApiProvider.getOrderbook', 'Error on get orderbook: $e');
      rethrow;
    }
  }

  Future<dynamic> getOrderbookDepth(
    GetOrderbookDepth request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final response = await userBody.client
          .post(Uri.parse(url), body: getOrderbookDepthToJson(userBody.body));
      _assert200(response);
      _logRes('getOrderbookDepth', response);

      final parsedBody = _parseResponse(response);

      if (parsedBody['result'] == null) return null;

      final List<OrderbookDepth> list = [];
      for (dynamic item in parsedBody['result']) {
        list.add(OrderbookDepth.fromJson(item));
      }

      return list;
    } catch (e) {
      return _catchErrorString(
        'getOrderbookDepth',
        e,
        'mm orderbook_depth] $e',
      );
    }
  }

  Future<PrivKey> getPrivKey(GetPrivKey gpk, {http.Client client}) async {
    client ??= mmSe.client;
    try {
      final userBody = await _assertUserpass(client, gpk);
      final r = await userBody.client
          .post(Uri.parse(url), body: getPrivKeyToJson(userBody.body));
      _assertSuccess(error: jsonDecode(r.body)['error'], code: r.statusCode);
      _logMmResReceived('getPrivKey');

      // Parse JSON once, then check if the JSON is an error.
      final dynamic parsedBody = json.decode(r.body);
      final error = ErrorString.fromJson(parsedBody);
      if (error.error.isNotEmpty) throw removeLineFromMM2(error);

      final PrivKey privKey = PrivKey.fromJson(parsedBody);

      return privKey;
    } catch (e) {
      print('$e');
    }
    throw Exception('Error on get priv key');
  }

  Future<PublicKey> getPublicKey([http.Client client]) async {
    client ??= mmSe.client;
    try {
      final userBody = await _assertUserpass(client, GetPublicKey());
      final r = await userBody.client
          .post(Uri.parse(url), body: getPublicKeyToJson(userBody.body));
      _assert200(r);
      _logRes('getPublicKey', r);

      final parsedBody = _parseResponse(r);

      final PublicKey publicKey = PublicKey.fromJson(parsedBody);

      return publicKey;
    } catch (e) {
      throw _catchErrorString('getPublicKey', e, 'Error getting public key');
    }
  }

  Future<RecentSwaps> getRecentSwaps(GetRecentSwap grs,
      {http.Client client}) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(client, grs);
    final r = await userBody.client
        .post(Uri.parse(url), body: getRecentSwapToJson(userBody.body));
    _assert200(r);
    _logRes('getRecentSwaps', r);

    final parsedBody = _parseResponse(r);

    return RecentSwaps.fromJson(parsedBody);
  }

  Future<List<RewardsItem>> getRewardsInfo({http.Client client}) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(
      client,
      GetRewardsInfo(),
    );

    final r =
        await client.post(Uri.parse(url), body: jsonEncode(userBody.body));
    _assert200(r);
    _logRes('getRewardsInfo', r);

    final parsedBody = _parseResponse(r);

    List<RewardsItem> list;
    try {
      for (dynamic item in parsedBody['result']) {
        list ??= [];
        list.add(RewardsItem.fromJson(item));
      }
    } catch (e) {
      print('$e');
      throw Exception('Error on get priv key');
    }

    return list;
  }

  Future<dynamic> getSwapStatus(
    http.Client client,
    GetSwap body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: getSwapToJson(userBody.body))
            .then((Response r) => _logRes('getSwapStatus', r))
            .then<dynamic>((Response res) => swapFromJson(res.body))
            .catchError((dynamic e) => errorStringFromJson(res.body))
            .catchError(
              (dynamic e) => _catchErrorString(
                'getSwapStatus',
                e,
                'Error on get swap status',
              ),
            ),
      );

  Future<dynamic> getTradeFee(
    http.Client client,
    GetTradeFee body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: getTradeFeeToJson(userBody.body))
            .then((Response r) => _logRes('getTradeFee', r))
            .then<dynamic>((Response res) => tradeFeeFromJson(res.body))
            .catchError(
              (dynamic e) => _catchErrorString(
                'getTradeFee',
                e,
                'Error on get tradeFee',
              ),
            ),
      );

  Future<TradePreimage> getTradePreimage(
    GetTradePreimage request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, request);
      final response = await userBody.client
          .post(Uri.parse(url), body: getTradePreimageToJson(userBody.body));
      _assert200(response);
      _logRes('getTradePreimage', response);

      final parsedBody = _parseResponse(response);

      final preimage = TradePreimage.fromJson(parsedBody);
      preimage.request = request;
      return preimage;
    } catch (e) {
      throw _catchErrorString('getTradePreimage', e, 'mm trade_preimage] $e');
    }
  }

  Future<TradePreimage> getTradePreimage2(
    GetTradePreimage2 request, {
    http.Client client,
  }) async {
    client ??= mmSe.client;

    final userBody = await _assertUserpass(client, request);

    Response response;
    try {
      response = await userBody.client
          .post(Uri.parse(url), body: getTradePreimage2ToJson(userBody.body));
      _logRes('getTradePreimage2', response);
    } catch (e) {
      return TradePreimage(
        request: request,
        error: RpcError(
          type: RpcErrorType.connectionError,
          message: e,
        ),
      );
    }

    dynamic parsedBody;
    try {
      parsedBody = jsonDecode(response.body);
    } catch (e) {
      return TradePreimage(
        request: request,
        error: RpcError(
          type: RpcErrorType.decodingError,
          message: e,
        ),
      );
    }

    if (parsedBody['error'] != null) {
      return TradePreimage(
        request: request,
        error: RpcError.fromJson(parsedBody),
      );
    }

    TradePreimage preimage;
    try {
      preimage = TradePreimage.fromJson(parsedBody);
    } catch (_) {}

    if (preimage == null) {
      return TradePreimage(
        request: request,
        error: RpcError(
          type: RpcErrorType.mappingError,
        ),
      );
    }

    preimage.request = request;
    return preimage;
  }

  Future<dynamic> getTransactions(
    http.Client client,
    GetTxHistory body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(Uri.parse(url), body: getTxHistoryToJson(userBody.body))
            .then((Response r) => _logRes('getTransactions', r))
            .then<dynamic>((Response res) => transactionsFromJson(res.body))
            .catchError((dynamic _) => errorStringFromJson(res.body))
            .catchError(
              (dynamic e) => _catchErrorString(
                'getTransactions',
                e,
                'Error on get transactions',
              ),
            ),
      );

  /// Ping mm2 endpoint to check if the host up. Use [isRpcUp] to verify
  /// that the API is running. [pingMm2] is useful to check if the host is
  /// running without trying to authenticate since the IP will be banned if
  /// an invalid RPC password is used multiple times.
  Future<bool> pingMm2({http.Client client}) async {
    client ??= mmSe.client;
    try {
      final r = await client.post(
        Uri.parse(url),
        body: json.encode({'method': 'ping'}),
      );

      Log('ApiProvider:pingMm2', r.toString());

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<VersionMm2> getVersionMM2(BaseService body,
      {http.Client client}) async {
    client ??= mmSe.client;

    try {
      final userBody = await _assertUserpass(client, body);
      final r = await userBody.client
          .post(Uri.parse(url), body: baseServiceToJson(userBody.body));
      _assert200(r);
      _logRes('getVersionMM2', r);

      final parsedBody = json.decode(r.body);

      final v = VersionMm2.fromJson(parsedBody);
      return v;
    } catch (e) {
      throw _catchErrorString('getVersionMM2', e, 'Error on get version MM2');
    }
  }

  ErrorString injectErrorString(dynamic value, String errorStr) {
    if (value is ErrorString) {
      if (value.error.contains(errorStr)) {
        value.error = errorStr;
        return value;
      }
    }
    return value;
  }

  Completer<void> _completerRpcIsUp;
  Timer _recheckIfRpcIsUpTimer;

  void _completeRpcUpCheck({bool isError = false}) {
    if (isError) throw UnimplementedError();

    _completerRpcIsUp?.complete();
    _recheckIfRpcIsUpTimer?.cancel();

    _completerRpcIsUp = null;
    _recheckIfRpcIsUpTimer = null;
  }

  Future<void> untilRpcIsUp() async {
    const MAX_RETRIES = null;
    const retryWarningInterval = Duration(seconds: 100);

    _completerRpcIsUp ??= Completer<void>();

    if (await isRpcUp()) {
      return _completerRpcIsUp.future.then((_) => _completeRpcUpCheck());
    }

    if (!(_recheckIfRpcIsUpTimer?.isActive ?? false)) {
      int retries = 0;

      _recheckIfRpcIsUpTimer =
          Timer.periodic(Duration(seconds: 1), (Timer t) async {
        final isUp = mmSe.running && await pingMm2() && await isRpcUp();

        final exceededMaxRetries =
            (MAX_RETRIES != null && retries >= MAX_RETRIES);

        if (isUp || exceededMaxRetries) {
          _completeRpcUpCheck();
        }

        retries++;

        // Every [retryWarningInterval] seconds, log a warning
        if (retries % retryWarningInterval.inSeconds == 0) {
          Log(
            'ApiProvider:untilRpcIsUp',
            ': Waiting a long time for RPC to be up',
          );
        }
      });
    }

    return _completerRpcIsUp.future;
  }

  Future<bool> isRpcUp([http.Client client]) async {
    client ??= mmSe.client;

    bool isUp = false;
    try {
      final VersionMm2 versionMm2 =
          await MM.getVersionMM2(BaseService(method: 'version'));

      isUp = versionMm2 is VersionMm2 && versionMm2 != null;
    } catch (e) {
      Log('mm', 'isRpcUp: $e');
    }

    return isUp;
  }

  Future<dynamic> postBuy(
    http.Client client,
    GetBuySell body,
  ) async =>
      await _assertUserpass(client, body)
          .then<dynamic>((UserpassBody userBody) {
        body.method = 'buy';
        return userBody.client
            .post(Uri.parse(url), body: getBuyToJson(userBody.body))
            .then((Response r) => _logRes('postBuy', r))
            .then<dynamic>((Response res) => buyResponseFromJson(res.body))
            .catchError(
              (dynamic e) => errorStringFromJson(res.body).then(
                (ErrorString errorString) => injectErrorString(
                  errorString,
                  'All electrums are currently disconnected',
                ),
              ),
            )
            .catchError(
              (dynamic e) =>
                  _catchErrorString('postBuy', e, 'Error on post buy'),
            );
      });

  Future<dynamic> postRawTransaction(
    http.Client client,
    GetSendRawTransaction body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(
              Uri.parse(url),
              body: getSendRawTransactionToJson(userBody.body),
            )
            .then((Response r) => _logRes('postRawTransaction', r))
            .then(
              (Response res) => sendRawTransactionResponseFromJson(res.body),
            )
            .then(
              (SendRawTransactionResponse data) =>
                  data.txHash.isEmpty ? errorStringFromJson(res.body) : data,
            )
            .catchError((dynamic e) => errorStringFromJson(res.body))
            .catchError(
              (dynamic e) => _catchErrorString(
                'postRawTransaction',
                e,
                'Error on post raw transaction',
              ),
            ),
      );

  Future<dynamic> postSell(
    http.Client client,
    GetBuySell body,
  ) async =>
      await _assertUserpass(client, body)
          .then<dynamic>((UserpassBody userBody) {
        body.method = 'sell';
        return userBody.client
            .post(Uri.parse(url), body: getBuyToJson(userBody.body))
            .then((Response r) => _logRes('postSell', r))
            .then<dynamic>((Response res) => buyResponseFromJson(res.body))
            .catchError((dynamic e) => errorStringFromJson(res.body))
            .catchError(
              (dynamic e) =>
                  _catchErrorString('postSell', e, 'Error on post sell'),
            );
      });

  Future<dynamic> postSetPrice(
    http.Client client,
    GetSetPrice body,
  ) async =>
      await _assertUserpass(client, body)
          .then<dynamic>(
            (UserpassBody userBody) => userBody.client
                .post(Uri.parse(url), body: getSetPriceToJson(userBody.body))
                .then((Response r) => _logRes('postSetPrice', r))
                .then<dynamic>(
                  (Response res) => setPriceResponseFromJson(res.body),
                )
                .catchError((dynamic e) => errorStringFromJson(res.body)),
          )
          .catchError(
            (dynamic e) =>
                _catchErrorString('postSetPrice', e, 'Error on set price'),
          );

  Future<WithdrawResponse> postWithdraw(
    http.Client client,
    GetWithdraw body,
  ) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(client, body);
    final r =
        await client.post(Uri.parse(url), body: json.encode(userBody.body));
    _assert200(r);
    _logRes('postWithdraw', r);

    return withdrawResponseFromJson(res.body);
  }

  /// For non-legacy withaw methods which have the withdraw as a 2-step process
  /// of initiating the withdraw and then tracking its status.
  Stream<WithdrawResponse> withdrawTaskStream(
    http.Client client,
    GetWithdraw body,
  ) async* {
    final initialResponse = await postWithdraw(client, body);

    yield withdrawResponseFromJson(res.body);

    if (initialResponse.taskId == null) {
      return;
    }

    while (true) {
      client ??= mmSe.client;

      final userBody = await _assertUserpass(
          client,
          GetWithdrawTaskStatus(
            userpass: body.userpass,
            taskId: initialResponse.taskId,
          ));

      final r =
          await client.post(Uri.parse(url), body: json.encode(userBody.body));
      _assert200(r);
      _logRes('getWithdrawStatus', r);

      final Map<String, dynamic> parsedBody = json.decode(r.body);

      final result = parsedBody['result'] as Map<String, dynamic>;

      final status = result['status'] as String;
      dynamic details = result['details']; // String or Map<String, dynamic>

      if (status == 'InProgress') {
        // Would be a real shame if we DDOSed ourselves.
        await Future.delayed(const Duration(seconds: 3));

        continue; // No-op, continue the loop.
      }

      if (status == 'Ok' && details is Map<String, dynamic>) {
        yield WithdrawResponse.fromJson(details);
        return;
      }

      Log('mm:withdrawTaskStream', 'status: $status, details: $details');
      throw ErrorString('Withdraw failed with unknown status: $status');
    }
  }

  Future<dynamic> recoverFundsOfSwap(
    http.Client client,
    GetRecoverFundsOfSwap body,
  ) async =>
      await _assertUserpass(client, body).then<dynamic>(
        (UserpassBody userBody) => userBody.client
            .post(
              Uri.parse(url),
              body: getRecoverFundsOfSwapToJson(userBody.body),
            )
            .then((Response r) => _logRes('recoverFundsOfSwap', r))
            .then<dynamic>(
                (Response res) => recoverFundsOfSwapFromJson(res.body))
            .catchError(
              (dynamic _) => errorStringFromJson(res.body)
                  .then(
                    (ErrorString errorString) => injectErrorString(
                      errorString,
                      'Maker payment is spent, swap is not recoverable',
                    ),
                  )
                  .then(
                    (ErrorString errorString) => injectErrorString(
                      errorString,
                      'Swap must be finished before recover funds attempt',
                    ),
                  )
                  .then((ErrorString errorString) =>
                      injectErrorString(errorString, 'swap data is not found')),
            )
            .catchError((dynamic e) => _catchErrorString(
                'recoverFundsOfSwap', e, 'Error on recover funds of swap')),
      );

  /// returns `null` if address is valid, and String [reason] if not
  Future<String> validateAddress({
    @required String address,
    @required String coin,
    http.Client client,
  }) async {
    client ??= mmSe.client;
    final userBody = await _assertUserpass(
      client,
      GetValidateAddress(
        address: address,
        coin: coin,
      ),
    );

    final r =
        await client.post(Uri.parse(url), body: jsonEncode(userBody.body));
    _assert200(r);
    _logRes('validateAddress', r);

    final parsedBody = _parseResponse(r);

    if (parsedBody['result']['is_valid']) {
      return null;
    } else {
      return parsedBody['result']['reason'];
    }
  }

  void _assertSuccess({@required String error, @required int code}) {
    final isErrorCode = code != null && !code.toString().startsWith('2');

    final isErrorMessage = error != null && error.isNotEmpty;

    if (isErrorCode || isErrorMessage) {
      throw ErrorString(
        'MM Response Error: HTTP $code: ${error ?? 'No error message'}',
      );
    }
  }

  void _assert200(Response r) {
    if (r.body.isEmpty) throw ErrorString('HTTP ${r.statusCode} empty');
    if (r.statusCode != 200) {
      String emsg;
      try {
        // See if the body is a JSON error.
        emsg = ErrorString.fromJson(json.decode(r.body)).error;
      } catch (_notJson) {/**/}
      if (emsg == null || emsg.isEmpty) {
        // Treat the body as a potentially useful but untrusted error message.
        emsg = r.body
            .replaceAll(RegExp('[^a-zA-Z0-9, :\]\.-]+'), '.')
            .replaceFirstMapped(RegExp('^(.{0,99}).*'), (Match m) => m[1]);
      }
      throw ErrorString(
        'HTTP ${r.statusCode}: Could not assert 200 in response. $emsg',
      );
    }
  }

  Future<UserpassBody> _assertUserpass(http.Client client, dynamic body) async {
    body.userpass = mmSe.userpass.isNotEmpty ? mmSe.userpass : body.userpass;
    return UserpassBody(body: body, client: client);
  }

  ErrorString _catchErrorString(String key, dynamic e, String message) {
    Log.println(key, message);
    return ErrorString(message);
  }

  void _logMmResReceived(String method) {
    Log.println(
        'mm:_logRes', '[$method] MM Method called and response received');
  }

  Response _logRes(String method, Response res) {
    final isResEmpty = res.body.isEmpty;
    String loggedLine = '[$method] MM Response logged. '
        'Body: ${isResEmpty ? 'None provided' : res.body.toString()}';

    // getMyOrders and getRecentSwaps are invoked every two seconds during an active order or swap
    // and fully logging their response bodies every two seconds is an overkill,
    // though we still want to *mention* the invocations in the logs.
    final bool cut = musicService.recommendsPeriodicUpdates &&
        (method == 'getMyOrders' || method == 'getRecentSwaps');
    if (cut && loggedLine.length > 77) {
      loggedLine = loggedLine.substring(0, 75) + '..';
    }

    Log.println('mm:_logRes', loggedLine);
    this.res = res;
    return res;
  }
}

class UserpassBody {
  dynamic body;
  http.Client client;
  UserpassBody({this.body, this.client});
}
