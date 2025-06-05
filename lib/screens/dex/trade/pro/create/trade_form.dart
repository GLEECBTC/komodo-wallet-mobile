import 'dart:async';
import 'dart:math';

import 'package:rational/rational.dart';

import '../../../../../app_config/app_config.dart';
import '../../../../../blocs/coins_bloc.dart';
import '../../../../../blocs/swap_bloc.dart';
import '../../../../../model/buy_response.dart';
import '../../../../../model/get_buy.dart';
import '../../../../../model/get_min_trading_volume.dart';
import '../../../../../model/get_setprice.dart';
import '../../../../../model/get_trade_preimage.dart';
import '../../../../../model/order_book_provider.dart';
import '../../../../../model/orderbook.dart';
import '../../../../../model/setprice_response.dart';
import '../../../../../model/trade_preimage.dart';
import '../../../../../services/job_service.dart';
import '../../../../../services/mm.dart';
import '../../../../../services/mm_service.dart';
import '../../../../../utils/log.dart';
import '../../../../../utils/utils.dart';
import '../../../../dex/trade/pro/confirm/protection_control.dart';

class TradeForm {
  Timer _typingTimer;

  Future<void> onSellAmountFieldChange(String text) async {
    _typingTimer?.cancel();
    _typingTimer = Timer(Duration(milliseconds: 200), () {
      _handleSellAmountChange(text);
    });
  }

  void _handleSellAmountChange(String newText) {
    Rational newAmount;
    try {
      newAmount = Rational.parse(newText);
    } catch (_) {
      swapBloc.setAmountSell(null);
      swapBloc.setIsMaxActive(false);

      if (swapBloc.matchingBid != null) {
        swapBloc.setAmountReceive(null);
      }
      return;
    }

    if (swapBloc.amountSell != null) {
      final String currentText = cutTrailingZeros(
          swapBloc.amountSell.toStringAsFixed(appConfig.tradeFormPrecision));
      if (newText == currentText) return;
    }

    updateAmountSell(newAmount);
  }

  void updateAmountSell(Rational amount) {
 
    final Ask matchingBid = swapBloc.matchingBid;
    if (matchingBid != null) {
      final Rational bidPrice = fract2rat(matchingBid.priceFract) ??
          Rational.parse(matchingBid.price);
      final Rational bidVolume = fract2rat(matchingBid.maxvolumeFract) ??
          Rational.parse(matchingBid.maxvolume.toString());
   
      // If greater than matching bid max receive volume
      if (amount >= bidVolume ) {
        amount = bidVolume;
        swapBloc.setIsMaxActive(false);
        swapBloc.shouldBuyOut = false;
      } else {
        swapBloc.shouldBuyOut = false;
      }
      
      final Rational amountReceive = amount / bidPrice;
      updateAmountReceive(amountReceive);
    }

    swapBloc.setAmountSell(amount);
  }

  void onReceiveAmountFieldChange(String newText) {
    Rational newAmount;
    try {
      newAmount = Rational.parse(newText);
    } catch (_) {
      swapBloc.setAmountReceive(null);

      if (swapBloc.matchingBid != null) {
        swapBloc.setAmountSell(null);
      }
      return;
    }

    if (swapBloc.amountReceive != null) {
      final String currentText = cutTrailingZeros(
          swapBloc.amountReceive.toStringAsFixed(appConfig.tradeFormPrecision));
      if (newText == currentText) return;
    }

    updateAmountReceive(newAmount);
  }

  void updateAmountReceive(Rational amount) {
    swapBloc.setAmountReceive(amount);
  }

  Future<void> makeSwap({
    ProtectionSettings protectionSettings,
    BuyOrderType buyOrderType,
    String minVolume,
    Function(dynamic) onSuccess,
    Function(dynamic) onError,
  }) async {
    Log('trade_form', 'Starting a swap…');

    if (swapBloc.matchingBid != null) {
      await _takerOrder(
        protectionSettings: protectionSettings,
        buyOrderType: buyOrderType,
        onSuccess: onSuccess,
        onError: onError,
      );
    } else {
      await _makerOrder(
          protectionSettings: protectionSettings,
          minVolume: minVolume,
          onSuccess: onSuccess,
          onError: onError);
    }
  }

  Future<void> _takerOrder({
    BuyOrderType buyOrderType,
    ProtectionSettings protectionSettings,
    Function(dynamic) onSuccess,
    Function(dynamic) onError,
  }) async {
    final Rational price = fract2rat(swapBloc.matchingBid.priceFract) ??
        Rational.parse(swapBloc.matchingBid.price);

    Rational volume;
    if (swapBloc.shouldBuyOut) {
      volume = fract2rat(swapBloc.matchingBid.maxvolumeFract) ??
          Rational.parse(swapBloc.matchingBid.maxvolume.toString());
    } else if (swapBloc.isSellMaxActive && swapBloc.maxTakerVolume != null) {
      volume = swapBloc.maxTakerVolume / price;
    } else {
      volume = swapBloc.amountReceive;
    }

    final dynamic re = await MM.postBuy(
      mmSe.client,
      GetBuySell(
        base: swapBloc.receiveCoinBalance.coin.abbr,
        rel: swapBloc.sellCoinBalance.coin.abbr,
        orderType: buyOrderType,
        baseNota: protectionSettings.requiresNotarization,
        baseConfs: protectionSettings.requiredConfirmations,
        volume: {
          'numer': volume.numerator.toString(),
          'denom': volume.denominator.toString(),
        },
        price: {
          'numer': price.numerator.toString(),
          'denom': price.denominator.toString(),
        },
      ),
    );

    if (re is BuyResponse) {
      onSuccess(re);
    } else {
      onError(re);
    }
  }

  Future<void> _makerOrder({
    ProtectionSettings protectionSettings,
    String minVolume,
    Function(dynamic) onSuccess,
    Function(dynamic) onError,
  }) async {
    final amountSell = swapBloc.amountSell;
    final amountReceive = swapBloc.amountReceive;
    final Rational price = amountReceive / amountSell;

    final dynamic re = await MM.postSetPrice(
        mmSe.client,
        GetSetPrice(
          base: swapBloc.sellCoinBalance.coin.abbr,
          rel: swapBloc.receiveCoinBalance.coin.abbr,
          cancelPrevious: false,
          max: swapBloc.isSellMaxActive,
          minVolume: double.tryParse(minVolume ?? ''),
          relNota: protectionSettings.requiresNotarization,
          relConfs: protectionSettings.requiredConfirmations,
          volume: swapBloc.isSellMaxActive
              ? '0.00'
              : {
                  'numer': amountSell.numerator.toString(),
                  'denom': amountSell.denominator.toString(),
                },
          price: {
            'numer': price.numerator.toString(),
            'denom': price.denominator.toString(),
          },
        ));

    if (re is SetPriceResponse) {
      onSuccess(re);
    } else {
      onError(re);
    }
  }

  double getExchangeRate() {
    if (swapBloc.amountSell == null ||
        (swapBloc.amountSell?.toDouble() ?? 0) == 0) return null;
    if (swapBloc.amountReceive == null ||
        (swapBloc.amountReceive?.toDouble() ?? 0) == 0) return null;

    return (swapBloc.amountReceive / swapBloc.amountSell).toDouble();
  }

  Future<double> minVolumeDefault(String base,
      {String rel, double price}) async {
    double min;
    try {
      min = await MM.getMinTradingVolume(GetMinTradingVolume(coin: base));
    } catch (_) {}

    assert(rel == null || price != null);
    if (rel != null && price != null) {
      double minRel;
      try {
        minRel = await MM.getMinTradingVolume(GetMinTradingVolume(coin: rel));
      } catch (_) {}
      if (minRel != null) {
        final double minRelQuote = minRel / price;
        min = max(min, minRelQuote);
      }
    }

    return min;
  }

  void setMaxSellAmount() {
    swapBloc.setIsMaxActive(false);
    final Rational max = Rational.parse(_getMaxSellAmount().toString());
    if (max != swapBloc.amountSell) updateAmountSell(max);
  }

  double _getMaxSellAmount() {
    if (swapBloc.sellCoinBalance == null) return null;

    if (swapBloc.matchingBid != null && swapBloc.maxTakerVolume != null) {
      /// maxTakerVolume should be floored to [precision]
      /// instead of rounding
      double maxTakerVolume = swapBloc.maxTakerVolume.toDouble();
      maxTakerVolume =
          (maxTakerVolume * pow(10, appConfig.tradeFormPrecision)).floor() /
              pow(10, appConfig.tradeFormPrecision);
      return maxTakerVolume;
    }

    final double fromPreimage = _getMaxFromPreimage();
    if (fromPreimage != null) {
      return fromPreimage;
    }

    final double sellCoinBalance = double.tryParse(swapBloc
            .sellCoinBalance.balance.balance
            .toStringAsFixed(appConfig.tradeFormPrecision) ??
        '0');
    return sellCoinBalance;
  }

  double _getMaxFromPreimage() {
    final TradePreimage preimage = swapBloc.tradePreimage;
    if (preimage == null) return null;

    // If tradePreimage contains volume use it for max volume
    final String volume = preimage.volume;
    if (volume != null) {
      final double volumeDouble = double.tryParse(volume);
      return double.parse(
          volumeDouble.toStringAsFixed(appConfig.tradeFormPrecision));
    }

    // If tradePreimage doesn't contain volume - trying to calculate it
    final CoinFee totalSellCoinFee = preimage.totalFees.firstWhere(
      (fee) => fee.coin == swapBloc.sellCoinBalance.coin.abbr,
      orElse: () => null,
    );
    final double calculatedVolume =
        swapBloc.sellCoinBalance.balance.balance.toDouble() -
            (double.tryParse(totalSellCoinFee?.amount ?? '0') ?? 0.0);
    return double.parse(
        calculatedVolume.toStringAsFixed(appConfig.tradeFormPrecision));
  }

  void updateMaxSellAmount() {
    cancelMaxSellAmount();
    jobService.install('updateMaxSellAmount', 10, (j) async {
      if (!mmSe.running || swapBloc.sellCoinBalance == null) return;
      await _updateMaxSellAmount();
    });
  }

  Future<void> _updateMaxSellAmount() async {
    await swapBloc.updateMaxTakerVolume();
    await coinsBloc.updateCoinBalances();
    swapBloc.updateFieldBalances();
  }

  void cancelMaxSellAmount() {
    jobService.suspend('updateMaxSellAmount');
  }

  // Updates swapBloc.tradePreimage and returns error String or null
  Future<String> updateTradePreimage() async {
    if (swapBloc.sellCoinBalance == null ||
        swapBloc.receiveCoinBalance == null ||
        (swapBloc.amountSell?.toDouble() ?? 0) == 0 ||
        (swapBloc.amountReceive?.toDouble() ?? 0) == 0) {
      swapBloc.tradePreimage = null;
      return null;
    }

    final getTradePreimageRequest = swapBloc.matchingBid == null
        ? GetTradePreimage(
            base: swapBloc.sellCoinBalance.coin.abbr,
            rel: swapBloc.receiveCoinBalance.coin.abbr,
            max: swapBloc.isSellMaxActive ?? false,
            swapMethod: 'setprice',
            volume: swapBloc.amountSell.toDouble().toString(),
            price: (swapBloc.amountReceive / swapBloc.amountSell)
                .toDouble()
                .toString())
        : GetTradePreimage(
            base: swapBloc.receiveCoinBalance.coin.abbr,
            rel: swapBloc.sellCoinBalance.coin.abbr,
            swapMethod: 'buy',
            volume: swapBloc.amountReceive.toDouble().toString(),
            price: (swapBloc.amountSell / swapBloc.amountReceive)
                .toDouble()
                .toString());

    TradePreimage tradePreimage;

    swapBloc.processing = true;
    try {
      tradePreimage = await MM.getTradePreimage(getTradePreimageRequest);
    } catch (e) {
      swapBloc.processing = false;
      swapBloc.tradePreimage = null;
      Log('trade_form', 'updateTradePreimage] $e');
      return e.toString();
    }

    swapBloc.processing = false;
    swapBloc.tradePreimage = tradePreimage;
    return null;
  }

  void reset() {
    Log('trade_form', 'form reseted');

    swapBloc.updateSellCoin(null);
    swapBloc.updateReceiveCoin(null);
    swapBloc.updateMatchingBid(null);
    swapBloc.setAmountSell(null);
    swapBloc.setAmountReceive(null);
    swapBloc.setIsMaxActive(false);
    swapBloc.setEnabledSellField(false);
    swapBloc.enabledReceiveField = false;
    swapBloc.shouldBuyOut = false;
    swapBloc.tradePreimage = null;
    swapBloc.processing = false;
    swapBloc.maxTakerVolume = null;
    swapBloc.autovalidate = false;
    swapBloc.preimageError = null;
    swapBloc.validatorError = null;
    syncOrderbook.activePair = CoinsPair(sell: null, buy: null);
  }
}

var tradeForm = TradeForm();
