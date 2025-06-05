import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:komodo_dex/screens/dex/trade/pro/caution_label.dart';
import 'package:provider/provider.dart';
import 'package:rational/rational.dart';

import '../../../../../blocs/swap_bloc.dart';
import '../../../../../localizations.dart';
import '../../../../../model/cex_provider.dart';
import '../../../../../model/coin.dart';
import '../../../../../model/coin_balance.dart';
import '../../../../../model/market.dart';
import '../../../../../model/order_book_provider.dart';
import '../../../../../model/orderbook.dart';
import '../../../../../model/trade_preimage.dart';
import '../../../../../utils/log.dart';
import '../../../../../utils/utils.dart';
import '../../../../../widgets/auto_scroll_text.dart';
import '../../../../dex/trade/build_detailed_fees.dart';
import '../../../../dex/trade/pro/create/build_fiat_amount.dart';
import '../../../../dex/trade/pro/create/build_reset_button.dart';
import '../../../../dex/trade/pro/create/build_trade_button.dart';
import '../../../../dex/trade/pro/create/preimage_error.dart';
import '../../../../dex/trade/pro/create/receive/receive_amount_field.dart';
import '../../../../dex/trade/pro/create/receive/select_receive_coin_dialog.dart';
import '../../../../dex/trade/pro/create/sell/select_sell_coin_dialog.dart';
import '../../../../dex/trade/pro/create/sell/sell_amount_field.dart';
import '../../../../dex/trade/pro/create/trade_form.dart';
import '../../../../dex/trade/pro/create/trade_form_validator.dart';
import '../../../../dex/trade/pro/evaluation.dart';
import '../../../../dex/trade/pro/exchange_rate.dart';

class TradePage extends StatefulWidget {
  const TradePage({this.mContext});

  final BuildContext mContext;

  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> with TickerProviderStateMixin {
  CexProvider _cexProvider;
  OrderBookProvider _orderBookProvider;
  final _listeners = <StreamSubscription<dynamic>>[];
  Timer _updateTimer;

  @override
  void initState() {
    _listeners.add(swapBloc.outAmountSell.listen(_onFormStateChange));
    _listeners.add(swapBloc.outAmountReceive.listen(_onFormStateChange));

    // tradeForm.updateMaxSellAmount();

    _onFormStateChange(null);

    super.initState();
  }

  @override
  void dispose() {
    _listeners.map((listener) => listener?.cancel());
    _updateTimer?.cancel();
    tradeForm.cancelMaxSellAmount();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _cexProvider ??= Provider.of<CexProvider>(context);
    _orderBookProvider ??= Provider.of<OrderBookProvider>(context);

    return Column(
      children: <Widget>[
        _buildProgressBar(),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            children: [
              _buildExchange(),
              SizedBox(height: 8),
              _buildFeesOrError(),
              SizedBox(height: 8),
              ExchangeRate(alignCenter: true),
              SizedBox(height: 8),
              Evaluation(alignCenter: true),
              SizedBox(height: 8),
              CautionLabel(),
              SizedBox(height: 20),
              BuildTradeButton(),
              BuildResetButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return StreamBuilder<bool>(
      initialData: swapBloc.processing,
      stream: swapBloc.outProcessing,
      builder: (context, snapshot) {
        return SizedBox(
          height: 1,
          child: snapshot.data ? LinearProgressIndicator() : SizedBox(),
        );
      },
    );
  }

  Widget _buildExchange() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: <Widget>[
            _buildCard(Market.SELL),
            _buildCard(Market.BUY),
          ],
        ),
        Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: SvgPicture.asset(
              Theme.of(context).brightness == Brightness.light
                  ? 'assets/svg_light/icon_swap.svg'
                  : 'assets/svg/icon_swap.svg',
              height: 40,
            ))
      ],
    );
  }

  Widget _buildCard(Market market) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Card(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 28),
            child: Table(
              columnWidths: const {
                1: FixedColumnWidth(16),
              },
              children: [
                TableRow(
                  children: [
                    Text(
                      AppLocalizations.of(context).selectCoin,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(),
                    Text(
                      market == Market.SELL
                          ? AppLocalizations.of(context).sell
                          : AppLocalizations.of(context).receiveLower,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    SizedBox(
                      width: 130,
                      child: _buildCoinSelect(market),
                    ),
                    SizedBox(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              market == Market.SELL
                                  ? SellAmountField()
                                  : ReceiveAmountField(),
                              const SizedBox(height: 2),
                              BuildFiatAmount(market),
                            ],
                          ),
                        ),
                        _buildMaxButton(market),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeesOrError() {
    return StreamBuilder<String>(
        initialData: swapBloc.preimageError,
        stream: swapBloc.outPreimageError,
        builder: (context, preimageError) {
          if (preimageError.data != null) {
            return Container(
                padding: EdgeInsets.fromLTRB(24, 12, 24, 10),
                child: PreimageError(preimageError.data));
          } else {
            return StreamBuilder<String>(
                initialData: swapBloc.validatorError,
                stream: swapBloc.outValidatorError,
                builder: (context, validatorError) {
                  if (validatorError.data != null) {
                    return Container(
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 10),
                        child: Text(
                          validatorError.data,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Theme.of(context).errorColor),
                        ));
                  } else {
                    return StreamBuilder<TradePreimage>(
                        initialData: swapBloc.tradePreimage,
                        stream: swapBloc.outTradePreimage,
                        builder: (context, snapshot) {
                          return Container(
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                            child: BuildDetailedFees(
                              preimage: snapshot.data,
                              alignCenter: true,
                            ),
                          );
                        });
                  }
                });
          }
        });
  }

  Widget _buildMaxButton(Market market) {
    return StreamBuilder<bool>(
      initialData: swapBloc.enabledSellField,
      stream: swapBloc.outEnabledSellField,
      builder: (context, enabledSnapshot) {
        return market == Market.SELL && enabledSnapshot.data
            ? TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                ),
                onPressed: tradeForm.setMaxSellAmount,
                child: StreamBuilder<bool>(
                    initialData: swapBloc.isSellMaxActive,
                    stream: swapBloc.outIsMaxActive,
                    builder: (context, maxSnapshot) {
                      return Text(AppLocalizations.of(context).max);
                    }),
              )
            : SizedBox();
      },
    );
  }

  Widget _buildCoinSelect(Market market) {
    Log.println(
        'trade_page:719', 'coin-select-${market.toString().toLowerCase()}');
    return SizedBox(
      child: market == Market.BUY
          ? StreamBuilder<CoinBalance>(
              key: Key('coin-select-buy'),
              initialData: swapBloc.receiveCoinBalance,
              stream: swapBloc.outReceiveCoinBalance,
              builder: (context, snapshot) => _buildSelectorCoin(
                coin: snapshot.data?.coin,
                onTap: () async => _openSelectCoinDialog(market),
              ),
            )
          : StreamBuilder<CoinBalance>(
              key: Key('coin-select-sell'),
              initialData: swapBloc.sellCoinBalance,
              stream: swapBloc.outSellCoinBalance,
              builder: (context, snapshot) => _buildSelectorCoin(
                coin: snapshot.data?.coin,
                onTap: () async => _openSelectCoinDialog(market),
              ),
            ),
    );
  }

  Widget _buildSelectorCoin({
    @required Coin coin,
    @required GestureTapCallback onTap,
  }) {
    return Opacity(
      opacity: coin == null ? 0.2 : 1,
      child: ListTile(
        onTap: onTap,
        shape: Border(
          bottom: BorderSide(color: Theme.of(context).focusColor, width: 1),
        ),
        horizontalTitleGap: 8,
        minLeadingWidth: 16,
        visualDensity: VisualDensity.compact,
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        minVerticalPadding: 0,
        leading: coin != null
            ? Image.asset(
                getCoinIconPath(coin.abbr),
                height: 25,
              )
            : CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                radius: 12,
              ),
        title: AutoScrollText(
          text: coin?.abbr ?? '-',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        trailing: Icon(Icons.arrow_drop_down),
      ),
    );
  }

  Future<void> _openSelectCoinDialog(Market market) async {
    if (market == Market.BUY) {
      if (swapBloc.amountSell == null || swapBloc.amountSell.toDouble() <= 0) {
        _showSnackbar(AppLocalizations.of(context).enterSellAmount);
        return;
      }

      if (!swapBloc.processing) {
        openSelectReceiveCoinDialog(
          context: context,
          amountSell: swapBloc.amountSell.toDouble(),
          onSelect: (Ask bid) => _performTakerOrder(bid),
          onCreate: (String coin) => _performMakerOrder(coin),
        );
      }
    } else {
      openSelectSellCoinDialog(
        context: context,
        onDone: (coin) {
          tradeForm.reset();
          Log('trade_page', 'sell coin selected: ${coin.coin.abbr}');

          swapBloc.updateSellCoin(coin);
          swapBloc.setEnabledSellField(true);
         // tradeForm.updateMaxSellAmount();
        },
      );
    }
  }

  Future<void> _performMakerOrder(String coin) async {
    Log('trade_page', 'receive coin selected: $coin...');
    Log('trade_page', 'performing maker order');

    unfocusEverything();
    swapBloc.updateMatchingBid(null);
    if (swapBloc.isSellMaxActive) tradeForm.setMaxSellAmount();

    swapBloc.updateReceiveCoin(coin);
    swapBloc.setAmountReceive(null);
    swapBloc.enabledReceiveField = true;
  }

  Future<void> _performTakerOrder(Ask bid) async {
    Log('trade_page', 'receive coin selected: ${bid.coin}...');
    Log('trade_page', 'performing taker order');

    unfocusEverything();
    swapBloc.updateMatchingBid(bid);
    if (swapBloc.isSellMaxActive) tradeForm.setMaxSellAmount();

    swapBloc.enabledReceiveField = false;
    swapBloc.updateReceiveCoin(bid.coin);
    tradeForm.updateAmountReceive(bid.getReceiveAmount(swapBloc.amountSell));

    final Rational amountSell = swapBloc.amountSell;
    final Rational bidPrice = fract2rat(bid.priceFract);
    final Rational bidVolume = fract2rat(bid.maxvolumeFract);

   // if (amountSell > bidVolume * bidPrice) {
   //   tradeForm.updateAmountSell(bidVolume * bidPrice);
   //   swapBloc.setIsMaxActive(false);
   // }
  }

  void _showSnackbar(String text) {
    if (context == null) return;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(text),
    ));
  }

  Future<void> _onFormStateChange(dynamic _) async {
    _updateTimer?.cancel();
    _updateTimer = Timer(Duration(milliseconds: 500), () async {
      _updateAutovalidate();

      await _updateFees();
      if (swapBloc.autovalidate) _validate();

      await _updateSellAmountIfMax();
    });
  }

  Future<void> _updateFees() async {
    if (!mounted) return;
    swapBloc.preimageError = null;
    final String error = await tradeForm.updateTradePreimage();

    if (error != null) {
      swapBloc.preimageError = error;
    }
  }

  Future<void> _updateSellAmountIfMax() async {
    if (swapBloc.isSellMaxActive) tradeForm.setMaxSellAmount();
  }

  void _updateAutovalidate() {
    // We don't want to interrupt user while she is filling the
    // form for the first time, so autovalidation is turned off by default,
    // and we turn it on only on some conditions: if all fields are
    // filled and non-zero, or if creating taker-swap
    final bool startAutovalidation = swapBloc.matchingBid != null ||
        swapBloc.sellCoinBalance != null &&
            (swapBloc.amountSell?.toDouble() ?? 0) > 0 &&
            swapBloc.receiveCoinBalance != null &&
            (swapBloc.amountReceive?.toDouble() ?? 0) > 0;

    if (startAutovalidation) swapBloc.autovalidate = true;
  }

  Future<void> _validate() async {
    final TradeFormValidator validator = TradeFormValidator();
    swapBloc.validatorError = await validator.errorMessage;
  }
}
