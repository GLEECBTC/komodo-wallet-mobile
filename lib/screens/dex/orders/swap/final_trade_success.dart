import 'dart:io';
import 'dart:ui' as ui;

import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../app_config/app_config.dart';
import '../../../../blocs/dialog_bloc.dart';
import '../../../../localizations.dart';
import '../../../../model/swap.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/swap_share_card.dart';
import '../../../dex/orders/swap/detail_swap.dart';
import '../../../dex/orders/swap/share_preview_overlay.dart';

class FinalTradeSuccess extends StatefulWidget {
  const FinalTradeSuccess({@required this.swap});

  final Swap swap;

  @override
  _FinalTradeSuccessState createState() => _FinalTradeSuccessState();
}

class _FinalTradeSuccessState extends State<FinalTradeSuccess>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<dynamic> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = Tween<double>(begin: -0.5, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey repaintKey = GlobalKey();

    return FadeTransition(
      opacity: animationController.drive(CurveTween(curve: Curves.easeOut)),
      child: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              if (appConfig.isSwapShareCardEnabled)
                Positioned(
                  width: 256,
                  height: 144,
                  left: 10000,
                  child: RepaintBoundary(
                    key: repaintKey,
                    child: SwapShareCard(swap: widget.swap),
                  ),
                ),
              Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: SizedBox(
                      height: 200,
                      child: SvgPicture.asset(
                          Theme.of(context).brightness == Brightness.light
                              ? 'assets/svg_light/trade_success.svg'
                              : 'assets/svg/trade_success.svg',
                          semanticsLabel: 'Trade Success'),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: <Widget>[
                      Text(AppLocalizations.of(context).trade,
                          style: Theme.of(context).textTheme.headline6),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            AppLocalizations.of(context).tradeCompleted,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                          ),
                          Expanded(
                            child: appConfig.isSwapShareCardEnabled
                                ? Align(
                                    alignment: Alignment.centerLeft,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      onTap: () {
                                        _shareCard(repaintKey);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(Icons.share),
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 52, 62, 76),
                    height: 1,
                    width: double.infinity,
                  ),
                ],
              ),
            ],
          ),
          DetailSwap(
            swap: widget.swap,
          ),
        ],
      ),
    );
  }

  Future<void> _shareCard(GlobalKey repaintKey) async {
    final RenderRepaintBoundary boundary =
        repaintKey.currentContext.findRenderObject();
    final ui.Image image = await boundary.toImage(pixelRatio: 4);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData.buffer.asUint8List();

    final String directory = (await applicationDocumentsDirectory).path;
    final imgFile = File('$directory/${widget.swap.result.uuid}.png');
    await imgFile.writeAsBytes(pngBytes);

    final myInfo = extractMyInfoFromSwap(widget.swap.result);
    final myCoin = myInfo['myCoin'];
    final otherCoin = myInfo['otherCoin'];

    final shareText = "I've just atomic swapped $myCoin/$otherCoin"
        ' on my phone! You can try it too: https://gleec.com\n'
        '#blockchain #dex #gleecdex #gleec #atomicswap';

    await Share.shareXFiles(
      [XFile(imgFile.path, mimeType: 'image/png')],
      text: shareText,
    );

    if (Platform.isIOS) {
      dialogBloc.dialog = Navigator.of(context)
          .push(SharePreviewOverlay(imgFile))
          .then((_) => dialogBloc.dialog = null);
    }
  }
}
