import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_config/theme_data.dart';
import '../../localizations.dart';
import '../../model/balance.dart';
import '../../model/cex_provider.dart';
import '../../model/coin.dart';
import '../../model/coin_balance.dart';
import '../../utils/utils.dart';
import '../../widgets/candles_icon.dart';
import '../../widgets/cex_data_marker.dart';
import '../../widgets/duration_select.dart';
import '../markets/candlestick_chart.dart';

class BuildCoinPriceListItem extends StatefulWidget {
  const BuildCoinPriceListItem({this.coinBalance, this.onTap, Key key})
      : super(key: key);

  final CoinBalance coinBalance;
  final Function onTap;

  @override
  _BuildCoinPriceListItemState createState() => _BuildCoinPriceListItemState();
}

class _BuildCoinPriceListItemState extends State<BuildCoinPriceListItem> {
  Coin coin;
  Balance balance;
  bool expanded = false;
  bool quotedChart = false;
  String chartDuration = '3600';
  CexProvider cexProvider;

  @override
  Widget build(BuildContext context) {
    cexProvider = Provider.of<CexProvider>(context, listen: false);
    coin = widget.coinBalance.coin;
    balance = widget.coinBalance.balance;

    final bool coinHasNonZeroPrice =
        double.parse(widget.coinBalance.priceForOne ?? '0') > 0;
    final String _currency = cexProvider.currency.toLowerCase() == 'usd'
        ? 'USDC'
        : cexProvider.currency.toUpperCase();
    final bool coinHasChartData = cexProvider
        .isChartAvailable('${widget.coinBalance.coin.abbr}-$_currency');

    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Color(int.parse(coin.colorCoin)),
              width: 8,
              height: 64,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: widget.onTap,
                            child: Container(
                              height: 64,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      getCoinIconPath(balance.coin),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    coin.name.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              expanded = !expanded;
                            });
                          },
                          child: Container(
                            height: 64,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: <Widget>[
                                if (coinHasNonZeroPrice)
                                  Row(
                                    children: <Widget>[
                                      CexMarker(
                                        context,
                                        size: const Size.fromHeight(14),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        cexProvider.convert(
                                          double.parse(
                                            widget.coinBalance.priceForOne,
                                          ),
                                        ),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.light
                                                  ? cexColorLight
                                                  : cexColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                Container(
                                  child: coinHasNonZeroPrice && coinHasChartData
                                      ? CandlesIcon(
                                          size: 14,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? cexColorLight
                                              : cexColor.withOpacity(0.8),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (expanded && coinHasChartData)
          CoinPriceChart(
            coin: widget.coinBalance.coin,
            currency: _currency,
            cexProvider: cexProvider,
            chartDuration: chartDuration,
            quotedChart: quotedChart,
            onDurationChange: (String duration) {
              setState(() {
                chartDuration = duration;
              });
            },
            onQuotedChange: (bool quoted) {
              setState(() {
                quotedChart = quoted;
              });
            },
          ),
      ],
    );
  }
}

class CoinPriceChart extends StatelessWidget {
  const CoinPriceChart({
    @required this.coin,
    @required this.currency,
    @required this.cexProvider,
    @required this.chartDuration,
    @required this.quotedChart,
    @required this.onDurationChange,
    @required this.onQuotedChange,
    Key key,
  }) : super(key: key);

  final Coin coin;
  final String currency;
  final CexProvider cexProvider;
  final String chartDuration;
  final bool quotedChart;
  final void Function(String) onDurationChange;
  final void Function(bool) onQuotedChange;

  @override
  Widget build(BuildContext context) {
    const double controlsBarHeight = 60;
    final double chartHeight = MediaQuery.of(context).size.height / 2;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: controlsBarHeight + chartHeight,
      child: Row(
        children: <Widget>[
          Opacity(
            opacity: 0.3,
            child: Container(
              color: Color(int.parse(coin.colorCoin)),
              width: 8,
              height: controlsBarHeight + chartHeight,
            ),
          ),
          Expanded(
            child: FutureBuilder<ChartData>(
              future: cexProvider.getCandles(
                '${coin.abbr}-$currency',
                double.parse(chartDuration),
              ),
              builder:
                  (BuildContext context, AsyncSnapshot<ChartData> snapshot) {
                List<CandleData> candles;
                if (snapshot.hasData) {
                  if (snapshot.data.data[chartDuration].isEmpty) {
                    final List<String> all = snapshot.data.data.keys.toList();
                    final int nextDuration = all.indexOf(chartDuration) + 1;
                    if (all.length > nextDuration) {
                      onDurationChange(all[nextDuration]);
                    }
                    return const SizedBox();
                  }

                  candles = snapshot.data.data[chartDuration];
                  if (candles == null) {
                    onDurationChange(snapshot.data.data.keys.first);
                    candles = snapshot.data.data[chartDuration];
                  }
                }

                List<Widget> _buildDisclaimer() {
                  if (!snapshot.hasData || snapshot.data.chain.length < 2) {
                    return [];
                  }

                  final String mediateBase = snapshot.data.chain[0].reverse
                      ? snapshot.data.chain[0].rel.toUpperCase()
                      : snapshot.data.chain[0].base.toUpperCase();

                  return [
                    const SizedBox(width: 4),
                    Text(
                      '(${AppLocalizations.of(context).basedOnCoinRatio(coin.abbr, mediateBase)})',
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).brightness == Brightness.light
                            ? cexColorLight
                            : cexColor,
                      ),
                    )
                  ];
                }

                final List<String> options = [];
                snapshot.data?.data
                    ?.forEach((String key, List<CandleData> value) {
                  if (value.isNotEmpty) {
                    options.add(key);
                  }
                });
                return Column(
                  children: <Widget>[
                    Container(
                      height: controlsBarHeight,
                      padding: const EdgeInsets.only(
                        left: 2,
                        right: 2,
                      ),
                      child: Row(
                        children: <Widget>[
                          DurationSelect(
                            value: chartDuration,
                            options: options,
                            disabled: !snapshot.hasData,
                            onChange: onDurationChange,
                          ),
                          ..._buildDisclaimer(),
                          const Expanded(child: SizedBox()),
                          ElevatedButton(
                            onPressed: snapshot.hasData
                                ? () => onQuotedChange(!quotedChart)
                                : null,
                            style: elevatedButtonSmallButtonStyle(),
                            child: Text(
                              quotedChart
                                  ? '$currency/${coin.abbr}'
                                  : '${coin.abbr}/$currency',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: chartHeight,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(),
                      child: snapshot.hasData
                          ? CandleChart(
                              data: candles,
                              duration: int.parse(chartDuration),
                              quoted: quotedChart,
                              textColor: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                              gridColor: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black.withOpacity(.2)
                                  : Colors.white.withOpacity(.4),
                            )
                          : snapshot.hasError
                              ? Center(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .candleChartError,
                                  ),
                                )
                              : const Center(
                                  child: CircularProgressIndicator(),
                                ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
