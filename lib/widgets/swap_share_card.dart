import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../model/swap.dart';
import '../utils/utils.dart';
import 'package:intl/intl.dart';

import '../localizations.dart';

class SwapShareCard extends StatelessWidget {
  const SwapShareCard({Key key, @required this.swap}) : super(key: key);

  final Swap swap;

  @override
  Widget build(BuildContext context) {
    final startedEvent = swap.result.events
        .firstWhere((e) => e.event.type == 'Started', orElse: () => null);
    final finishedEvent = swap.result.events
        .firstWhere((e) => e.event.type == 'Finished', orElse: () => null);
    int durationMinutes = 0;
    String dateFormatted = '';
    if (finishedEvent != null && startedEvent != null) {
      final startTime = DateTime.fromMillisecondsSinceEpoch(
          startedEvent.event.data.startedAt * 1000);
      final finalTime =
          DateTime.fromMillisecondsSinceEpoch(finishedEvent.timestamp);

      final DateFormat formatter = DateFormat.yMMMd();

      final Duration timeDifference = finalTime.difference(startTime);
      durationMinutes = timeDifference.inMinutes;

      dateFormatted = formatter.format(finalTime);
    }

    final myInfo = extractMyInfoFromSwap(swap.result);
    final myCoin = myInfo['myCoin'];
    final myAmount = myInfo['myAmount'];
    final otherCoin = myInfo['otherCoin'];
    final otherAmount = myInfo['otherAmount'];
    return DefaultTextStyle.merge(
      style: TextStyle(color: Colors.white),
      child: SizedBox(
        width: 256,
        height: 144,
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/swap_share/swap_share_background.png',
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.asset(
                              'assets/swap_share/swap_share_atomicdex_logo.png',
                              height: 24,
                            ),
                            Text(
                              AppLocalizations.of(context).poweredOnKmd,
                              style: TextStyle(fontSize: 4),
                            ),
                          ],
                        ),
                        Text(
                          myCoin +
                              '/' +
                              otherCoin +
                              ' '
                                  'Swap Complete!',
                          style: TextStyle(fontSize: 8),
                        ),
                        SizedBox(height: 6),
                        Expanded(
                          child: Container(
                            alignment: Alignment(0, 0),
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        getCoinIconPath(myCoin),
                                        height: 18,
                                      ),
                                      Text(
                                        cutTrailingZeros(
                                                formatPrice(myAmount, 4)) +
                                            ' ' +
                                            myCoin,
                                        style: TextStyle(fontSize: 6),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.swap_horiz_rounded,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        getCoinIconPath(otherCoin),
                                        height: 18,
                                      ),
                                      Text(
                                        cutTrailingZeros(
                                                formatPrice(otherAmount, 4)) +
                                            ' ' +
                                            otherCoin,
                                        style: const TextStyle(fontSize: 6),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          columnWidths: const {
                            0: IntrinsicColumnWidth(),
                            1: FixedColumnWidth(8),
                          },
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  toInitialUpper(
                                      AppLocalizations.of(context).details),
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 6,
                                  ),
                                ),
                                SizedBox(),
                                SizedBox(),
                              ],
                            ),
                            const TableRow(
                              children: [
                                SizedBox(height: 8),
                                SizedBox(height: 8),
                                SizedBox(height: 8),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(
                                  AppLocalizations.of(context).date,
                                  style: TextStyle(fontSize: 6),
                                ),
                                const SizedBox(),
                                Text(
                                  dateFormatted,
                                  style: const TextStyle(fontSize: 6),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(
                                  AppLocalizations.of(context).duration,
                                  style: TextStyle(fontSize: 6),
                                ),
                                const SizedBox(),
                                Text(
                                  '$durationMinutes ${AppLocalizations.of(context).longMinutes}',
                                  style: const TextStyle(fontSize: 6),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  'UUID',
                                  style: TextStyle(fontSize: 6),
                                ),
                                const SizedBox(),
                                Text(
                                  swap.result.myOrderUuid,
                                  style: const TextStyle(fontSize: 4),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        'assets/swap_share/swap_share_illustration.png',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
                        child: GestureDetector(
                          onTap: () => launchUrlString('https://gleec.com'),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Expanded(child: SizedBox()),
                              Image.asset(
                                'assets/swap_share/swap_share_qrcode.png',
                                height: 34,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Download Gleec Wallet on gleec.com',
                                style: TextStyle(fontSize: 6),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
