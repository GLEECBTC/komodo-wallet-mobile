import 'package:rational/rational.dart';

import '../../../../../blocs/coins_bloc.dart';
import '../../../../../blocs/main_bloc.dart';
import '../../../../../blocs/swap_bloc.dart';
import '../../../../../localizations.dart';
import '../../../../../model/coin_balance.dart';
import '../../../../../model/orderbook.dart';
import '../../../../../model/trade_preimage.dart';
import '../../../../../utils/utils.dart';
import '../../../../dex/trade/pro/create/trade_form.dart';

class TradeFormValidator {
  final CoinBalance sellBalance = swapBloc.sellCoinBalance;
  final CoinBalance receiveBalance = swapBloc.receiveCoinBalance;
  final Rational amountSell = swapBloc.amountSell;
  final Rational amountReceive = swapBloc.amountReceive;
  final Ask matchingBid = swapBloc.matchingBid;
  final AppLocalizations appLocalizations = AppLocalizations();

  Future<String> get errorMessage async {
    final String message = _validateNetwork() ??
        _validateMaxTakerVolume() ??
        await _validateMinValues() ??
        await _validateGas();
    return message;
  }

  String _validateNetwork() {
    if (mainBloc.networkStatus != NetworkStatus.Online) {
      return appLocalizations.noInternet;
    } else {
      return null;
    }
  }

  String _validateMaxTakerVolume() {
    if (swapBloc.matchingBid != null &&
        swapBloc.maxTakerVolume == Rational.parse('0')) {
      return appLocalizations
          .insufficientBalanceToPay(swapBloc.sellCoinBalance.coin.abbr);
    }

    return null;
  }

  Future<String> _validateMinValues() async {
    final double minVolumeSell =
        await tradeForm.minVolumeDefault(swapBloc.sellCoinBalance.coin.abbr);
    final double minVolumeReceive =
        await tradeForm.minVolumeDefault(swapBloc.receiveCoinBalance.coin.abbr);

    if (amountSell != null && amountSell.toDouble() < minVolumeSell) {
      return appLocalizations.minValue(
          swapBloc.sellCoinBalance.coin.abbr, '$minVolumeSell');
    } else if (amountReceive != null &&
        amountReceive.toDouble() < minVolumeReceive) {
      return appLocalizations.minValueBuy(
          swapBloc.receiveCoinBalance.coin.abbr, '$minVolumeReceive');
    } else if (matchingBid != null && matchingBid.minVolume != null) {
      if (amountReceive != null && amountReceive < matchingBid.minRelVolume) {
        return appLocalizations.minValueOrder(
          swapBloc.receiveCoinBalance.coin.abbr,
          cutTrailingZeros(formatPrice(matchingBid.minVolume)),
          swapBloc.sellCoinBalance.coin.abbr,
          cutTrailingZeros(formatPrice(matchingBid.minVolume.toDouble() *
              double.parse(matchingBid.price))),
        );
      }
      return null;
    } else {
      return null;
    }
  }

  Future<String> _validateGas() async {
    return await _validateGasFor(swapBloc.sellCoinBalance.coin.abbr) ??
        await _validateGasFor(swapBloc.receiveCoinBalance.coin.abbr);
  }

  Future<String> _validateGasFor(String coin) async {
    final String gasCoin = coinsBloc.getCoinByAbbr(coin)?.payGasIn;
    if (gasCoin == null) return null;

    if (!coinsBloc.isCoinActive(gasCoin)) {
      return appLocalizations.swapGasActivate(gasCoin);
    }

    if (swapBloc.tradePreimage == null) {
      if (swapBloc.preimageError != null) {
        // If gas coin is active, but api wasn't able to
        // generate tradePreimage, we assume
        // that gas coin ballance is insufficient.
        // TBD: refactor when 'trade_preimage' will return detailed error
        return appLocalizations.swapGasAmount(gasCoin);
      } else {
        return null;
      }
    } else {
      final CoinFee totalGasFee = swapBloc.tradePreimage.totalFees
          .firstWhere((item) => item.coin == gasCoin, orElse: () => null);
      if (totalGasFee != null) {
        final double totalGasAmount =
            double.tryParse(totalGasFee.amount ?? '0') ?? 0;
        final double gasBalance =
            coinsBloc.getBalanceByAbbr(gasCoin).balance.balance.toDouble();
        if (totalGasAmount > gasBalance) {
          return appLocalizations.swapGasAmountRequired(
              gasCoin, cutTrailingZeros(formatPrice(totalGasAmount, 4)));
        }
      }
    }

    return null;
  }
}
