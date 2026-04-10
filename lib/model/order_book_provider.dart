import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:komodo_dex/model/pair.dart';
import 'package:komodo_dex/services/db/database.dart';
import '../blocs/coins_bloc.dart';
import '../model/coin.dart';
import '../model/coin_balance.dart';
import '../model/error_string.dart';
import '../model/get_orderbook_depth.dart';
import '../model/market.dart';
import '../model/orderbook.dart';
import '../model/orderbook_depth.dart';
import '../model/swap.dart';
import '../screens/markets/coin_select.dart';
import '../services/job_service.dart';
import '../services/mm.dart';
import '../services/mm_service.dart';
import '../utils/log.dart';
import '../utils/utils.dart';
import 'get_orderbook.dart';

class OrderBookProvider extends ChangeNotifier {
  OrderBookProvider() {
    syncOrderbook.linkProvider(this);
    jobService.install('syncOrderbook', 60, (j) async {
      if (!mmSe.running) return;

      await syncOrderbook.fullOrderbookUpdate();
    });
  }
  @override
  void dispose() {
    syncOrderbook.unlinkProvider(this);
    super.dispose();
  }

  void notify() => notifyListeners();

  Orderbook getOrderBook([CoinsPair coinsPair]) =>
      syncOrderbook.getOrderBook(coinsPair);

  String getOrderbookError([CoinsPair coinsPair]) =>
      syncOrderbook.getOrderbookError(coinsPair);

  OrderbookDepth getDepth([CoinsPair coinsPair]) =>
      syncOrderbook.getDepth(coinsPair);

  // deprecated in favor of depthsForCoin
  // https://github.com/KomodoPlatform/AtomicDEX-mobile/issues/1146
  List<Orderbook> orderbooksForCoin([Coin coin]) =>
      syncOrderbook.orderbooksForCoin(coin);

  List<OrderbookDepth> depthsForCoin([Coin coin, Market type]) =>
      syncOrderbook.depthForCoin(coin, type);

  // deprecated in favor of subscribeDepth
  // https://github.com/KomodoPlatform/AtomicDEX-mobile/issues/1146
  Future<void> subscribeCoin([Coin coin, CoinType type]) =>
      syncOrderbook.subscribeCoin(coin, type);

  Future<void> subscribeDepth(String abbr, CoinType type) async =>
      await syncOrderbook.subscribeDepth(abbr, type);

  CoinsPair get activePair => syncOrderbook.activePair;
  set activePair(CoinsPair coinsPair) => syncOrderbook.activePair = coinsPair;

  void updateActivePair() => syncOrderbook.updateActivePair();

  // todo(AG): historical swap data for [coinsPair]
  List<Swap> getSwapHistory(CoinsPair coinsPair) {
    if (coinsPair.sell.abbr.startsWith('VOTE') ||
        coinsPair.buy.abbr.startsWith('VOTE')) {
      return null;
    }

    return [Swap()];
  }

  /// Returns [list] of Ask(), sorted by price (DESC),
  /// then by volume (DESC),
  /// then by age (DESC)
  static List<Ask> sortByPrice(List<Ask> list, {bool quotePrice = false}) {
    if (list == null || list.isEmpty) return list;

    final List<Ask> sorted = quotePrice
        ? list.map((Ask ask) {
            final Ask quoteAsk = Ask.fromJson(ask.toJson());
            quoteAsk.price = '${1 / double.parse(ask.price)}';
            quoteAsk.priceFract = ask.priceFract == null
                ? null
                : <String, dynamic>{
                    'numer': ask.priceFract['denom'],
                    'denom': ask.priceFract['numer'],
                  };
            return quoteAsk;
          }).toList()
        : List.from(list);

    sorted.sort((a, b) {
      if (double.parse(a.price) > double.parse(b.price)) return 1;
      if (double.parse(a.price) < double.parse(b.price)) return -1;

      if (a.maxvolume > b.maxvolume) return -1;
      if (a.maxvolume < b.maxvolume) return 1;

      return a.age.compareTo(b.age);
    });
    return sorted;
  }
}

class CoinsPair {
  CoinsPair({
    this.buy,
    this.sell,
  });

  Coin buy;
  Coin sell;
}

SyncOrderbook syncOrderbook = SyncOrderbook();

/// In ECS terms it is a System coordinating the orderbook information.
class SyncOrderbook {
  /// [ChangeNotifier] proxies linked to this singleton.
  final Set<OrderBookProvider> _providers = {};

  Map<String, Orderbook> _orderBooks = {}; // {'BTC-segwit/KMD': Orderbook(),}
  Map<String, String> _orderBookErrors = {}; // {'BTC-segwit/KMD': 'error1',}
  Map<String, OrderbookDepth> _orderbooksDepth = {};
  CoinsPair _activePair;
  bool _updatingDepth = false;

  /// Maps short order IDs to latest liveliness markers.
  List<String> _tickers = [];
  List<String> _depthTickers = [];

  CoinsPair get activePair => _activePair;

  set activePair(CoinsPair coinsPair) {
    _activePair = coinsPair;
    _notifyListeners();
  }

  void updateActivePair() {
    // Check if coins in activePair are still activated
    if (_activePair?.sell != null &&
        coinsBloc.getCoinByAbbr(_activePair.sell.abbr) == null) {
      _activePair.sell = null;
    }
    if (_activePair?.buy != null &&
        coinsBloc.getCoinByAbbr(_activePair.buy.abbr) == null) {
      _activePair.buy = null;
    }

    _notifyListeners();
  }

  Orderbook getOrderBook([CoinsPair coinsPair]) {
    coinsPair ??= activePair;
    if (coinsPair.buy == null || coinsPair.sell == null) return null;

    if (!_tickers.contains(_tickerStr(coinsPair)))
      _tickers.add(_tickerStr(coinsPair));

    return _orderBooks[_tickerStr(coinsPair)];
  }

  String getOrderbookError([CoinsPair coinsPair]) {
    coinsPair ??= activePair;
    if (coinsPair.buy == null || coinsPair.sell == null) return null;

    if (!_tickers.contains(_tickerStr(coinsPair)))
      _tickers.add(_tickerStr(coinsPair));

    return _orderBookErrors[_tickerStr(coinsPair)];
  }

  OrderbookDepth getDepth([CoinsPair coinsPair]) {
    coinsPair ??= activePair;
    if (coinsPair.buy == null || coinsPair.sell == null) return null;

    if (!_depthTickers.contains(_tickerStr(coinsPair))) {
      _depthTickers.add(_tickerStr(coinsPair));
    }
    return _orderbooksDepth[_tickerStr(coinsPair)];
  }

  Future<void> subscribeDepth(String abbr, CoinType type) async {
    if (_updatingDepth) await pauseUntil(() => !_updatingDepth);

    bool wasChanged = false;
    final LinkedHashMap<String, Coin> known = await coins;
    final List<CoinBalance> active = coinsBloc.coinBalance;

    active.removeWhere((e) => e.coin.walletOnly);
    final Coin coin = known[abbr];

    for (CoinBalance coinBalance in active) {
      if (coinBalance.coin.abbr == abbr) continue;

      final String ticker = _tickerStr(CoinsPair(
        sell: type == CoinType.base ? coin : coinBalance.coin,
        buy: type == CoinType.rel ? coin : coinBalance.coin,
      ));

      if (!_depthTickers.contains(ticker)) {
        _depthTickers.add(ticker);
        wasChanged = true;
      }
    }

    if (wasChanged) await _updateOrderbookDepth();
  }

  Future<void> subscribeCoin([Coin coin, CoinType type]) async {
    coin ??= activePair.sell;
    type ??= CoinType.base;

    bool wasChanged = false;
    final List<CoinBalance> coinsList = coinsBloc.coinBalance;
    coinsList.removeWhere((e) => e.coin.walletOnly);

    for (CoinBalance coinBalance in coinsList) {
      if (coinBalance.coin.abbr == coin.abbr) continue;

      final String ticker = _tickerStr(CoinsPair(
        sell: type == CoinType.base ? coin : coinBalance.coin,
        buy: type == CoinType.rel ? coin : coinBalance.coin,
      ));

      if (!_tickers.contains(ticker)) {
        _tickers.add(ticker);
        wasChanged = true;
      }
    }

    if (wasChanged) await _updateOrderBooks();
  }

  List<Orderbook> orderbooksForCoin([Coin coin]) {
    coin ??= activePair.sell;

    final List<Orderbook> list = [];
    _orderBooks.forEach((ticker, orderbook) {
      if (ticker.split('/')[0] == coin.abbr) {
        list.add(orderbook);
      }
    });

    return list;
  }

  List<OrderbookDepth> depthForCoin([Coin coin, Market type]) {
    coin ??= activePair?.sell;
    type ??= Market.SELL;

    final List<OrderbookDepth> list = [];
    _orderbooksDepth.forEach((ticker, orderbookDepth) {
      final int coinIndex = type == Market.SELL ? 0 : 1;
      if (ticker.split('/')[coinIndex] == coin?.abbr) {
        list.add(orderbookDepth);
      }
    });

    list.sort((a, b) => a.pair.rel.compareTo(b.pair.rel));

    return list.where((OrderbookDepth item) {
      final bool sameAsOrderbookTicker = item.pair.base == coin.orderbookTicker;
      final bool sameAsSegwitPair =
          isCoinPairSegwitPair(item.pair.base, item.pair.rel);

      return !sameAsOrderbookTicker && !sameAsSegwitPair;
    }).toList();
  }

  Future<void> _updateOrderBooks() async {
    final Map<String, Orderbook> orderBooks = {};
    final Map<String, String> orderBookErrors = {};
    for (String pair in _tickers) {
      try {
        final List<String> abbr = pair.split('/');
        final dynamic orderbook = await MM.getOrderbook(
            mmSe.client,
            GetOrderbook(
              base: abbr[0],
              rel: abbr[1],
            ));

        if (orderbook is Orderbook) {
          orderBooks[pair] = orderbook;
        }
      } catch (e) {
        orderBookErrors[pair] = e.error;
        Log('order_book_provider] _updateOrderBooks', '$pair: ${e.error}');
      }
    }

    _orderBooks = orderBooks;
    _orderBookErrors = orderBookErrors;
    _notifyListeners();
  }

  Future<void> _updateOrderbookDepth() async {
    _updatingDepth = true;

    final List<List<String>> pairs = [];
    for (String pair in _depthTickers) {
      final List<String> abbr = pair.split('/');
      pairs.add(abbr);
    }

    final dynamic result =
        await MM.getOrderbookDepth(GetOrderbookDepth(pairs: pairs));

    if (result is ErrorString) {
      Log('order_book_provider', '_updateOrderbooksDepth] ${result.error}');
      _updatingDepth = false;
      return;
    }

    if (result is List<OrderbookDepth>) {
      final Map<String, OrderbookDepth> orderbooksDepth = {};

      for (OrderbookDepth item in result) {
        orderbooksDepth['${item.pair.base}/${item.pair.rel}'] = item;
      }

      _orderbooksDepth = orderbooksDepth;
      _notifyListeners();
    }

    _updatingDepth = false;
  }

  String _tickerStr(CoinsPair pair) {
    return '${pair.sell.abbr}/${pair.buy.abbr}';
  }

  /// Link a [ChangeNotifier] proxy to this singleton.
  void linkProvider(OrderBookProvider provider) {
    _providers.add(provider);
  }

  /// Unlink a [ChangeNotifier] proxy from this singleton.
  void unlinkProvider(OrderBookProvider provider) {
    _providers.remove(provider);
  }

  void _notifyListeners() {
    for (OrderBookProvider provider in _providers) provider.notify();
  }

  bool _orderbookSnapshotInProgress = false;
  Future<void> _saveOrderbookSnapshot() async {
    if (_orderbookSnapshotInProgress) return;
    if ((_orderBooks == null || _orderBooks.isEmpty) &&
        (_orderbooksDepth == null || _orderbooksDepth.isEmpty) &&
        (_tickers.isEmpty && _depthTickers.isEmpty)) return;

    _orderbookSnapshotInProgress = true;

    final Map<String, dynamic> snapshot = {
      'orderBooks': _orderBooks,
      'orderbooksDepth': _orderbooksDepth,
      'tickers': _tickers,
      'depthTickers': _depthTickers,
    };

    final String jsonStr = json.encode(snapshot);
    await Db.saveOrderbookSnapshot(jsonStr);
    Log('order_book_provider]', 'Orderbook snapshot created');

    _orderbookSnapshotInProgress = false;
  }

  Future<void> loadOrderbookSnapshot() async {
    final String snapshotJsonStr = await Db.getOrderbookSnapshot();

    if (snapshotJsonStr == null) return;

    final Map<String, dynamic> snapshotMap = json.decode(snapshotJsonStr);

    Map<String, dynamic> snapshotOrderBooks =
        snapshotMap['orderBooks'] as Map<String, dynamic>;
    for (String key in snapshotOrderBooks.keys) {
      if (!_orderBooks.containsKey(key)) {
        _orderBooks[key] = Orderbook.fromJson(snapshotOrderBooks[key]);
      }
    }

    Map<String, dynamic> snapshotOrderbooksDepth =
        snapshotMap['orderbooksDepth'] as Map<String, dynamic>;
    for (String key in snapshotOrderbooksDepth.keys) {
      if (!_orderbooksDepth.containsKey(key)) {
        _orderbooksDepth[key] =
            OrderbookDepth.fromJson(snapshotOrderbooksDepth[key]);
      }
    }

    List<String> snapshotTickers =
        List<String>.from(snapshotMap['tickers'] ?? []);
    for (String ticker in snapshotTickers) {
      if (!_tickers.contains(ticker)) {
        _tickers.add(ticker);
      }
    }

    List<String> snapshotDepthTickers =
        List<String>.from(snapshotMap['depthTickers'] ?? []);
    for (String depthTicker in snapshotDepthTickers) {
      if (!_depthTickers.contains(depthTicker)) {
        _depthTickers.add(depthTicker);
      }
    }

    _notifyListeners();
  }

  Future<List<String>> getOrderbookPairsWithBalance() async {
    final coins = coinsBloc.coinBalance;

    final List<String> pairs = [];
    for (var i = 0; i < coins.length; i++) {
      for (var j = i + 1; j < coins.length; j++) {
        if ((!coins[i].coin.walletOnly && !coins[j].coin.walletOnly) &&
            (coins[i].balance.balance > Decimal.zero ||
                coins[j].balance.balance > Decimal.zero)) {
          String pair1 = '${coins[i].coin.abbr}/${coins[j].coin.abbr}';
          String pair2 = '${coins[j].coin.abbr}/${coins[i].coin.abbr}';

          if (!pairs.contains(pair1) && !pairs.contains(pair2)) {
            pairs.add(pair1);
          }
        }
      }
    }

    return pairs;
  }

  Future<Map<String, Orderbook>> _getOrderbooksAsync(List<String> pairs) async {
    Log('order_book_provider] _getOrderbooksAsync',
        '${DateTime.now()}: Start _getOrderbooksAsync');

    final Map<String, Orderbook> orderbooks = {};

    List<Future> futures = pairs.map((pair) async {
      final List<String> abbr = pair.split('/');
      if (isCoinPairSegwitPair(abbr[0], abbr[1])) {
        return;
      }

      final dynamic orderbook = await MM.getOrderbook(
          mmSe.client,
          GetOrderbook(
            base: abbr[0],
            rel: abbr[1],
          ));

      if (orderbook is Orderbook) {
        orderbooks[pair] = orderbook;
      } else if (orderbook is ErrorString) {
        Log(
          'order_book_provider] _updateOrderBooksAsync',
          '$pair: ${orderbook.error}',
        );
      }
    }).toList();

    await Future.wait(futures);

    Log('order_book_provider] _getOrderbooksAsync',
        '${DateTime.now()}: End _getOrderbooksAsync');

    return orderbooks;
  }

  Future<Map<String, OrderbookDepth>> _getOrderbookDepths(
      Map<String, Orderbook> orderbooks) async {
    final Map<String, OrderbookDepth> orderbookDepths = {};

    List<Future> futures = orderbooks.entries.map((entry) async {
      String pair = entry.key;
      Orderbook orderbook = entry.value;

      List<String> abbr = pair.split('/');
      Pair pairObj = Pair(base: abbr[0], rel: abbr[1]);
      Depth depth =
          Depth(asks: orderbook.asks.length, bids: orderbook.bids.length);

      orderbookDepths[pair] = OrderbookDepth(pair: pairObj, depth: depth);
    }).toList();

    await Future.wait(futures);

    return orderbookDepths;
  }

  Future<void> fullOrderbookUpdate() async {
    Log('order_book_provider] fullOrderbookUpdate',
        '${DateTime.now()}: Start full sync time');

    final pairs = await getOrderbookPairsWithBalance();

    // Add existing pairs from _tickers
    for (String ticker in _tickers) {
      if (!pairs.contains(ticker)) {
        pairs.add(ticker);
      }
    }

    final orderbooks = await syncOrderbook._getOrderbooksAsync(pairs);
    final orderbookDepths = await syncOrderbook._getOrderbookDepths(orderbooks);

    _tickers = pairs;
    _depthTickers = pairs;
    _orderBooks = orderbooks;
    _orderbooksDepth = orderbookDepths;

    Log('order_book_provider] fullOrderbookUpdate',
        '${DateTime.now()}: End full sync time');

    _notifyListeners();

    // await syncOrderbook._saveOrderbookSnapshot();
  }
}

/// Returns true if [base] and [rel] are a segwit pair.
/// Example: isCoinPairSegwitPair('BTC-segwit', 'BTC') == true
bool isCoinPairSegwitPair(String base, String rel) {
  final bool isBaseSegwit = base.toLowerCase().contains('segwit');
  if (isBaseSegwit) {
    return base.replaceAll('segwit', '').replaceAll('-', '').contains(rel);
  }

  final bool isRelSegwit = rel.toLowerCase().contains('segwit');
  if (isRelSegwit) {
    return rel.replaceAll('segwit', '').replaceAll('-', '').contains(base);
  }

  return false;
}
