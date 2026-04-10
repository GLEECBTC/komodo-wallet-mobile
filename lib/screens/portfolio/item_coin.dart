import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../blocs/main_bloc.dart';
import '../../../../blocs/settings_bloc.dart';
import '../../../../blocs/swap_bloc.dart';
import '../../../../blocs/swap_history_bloc.dart';
import '../../../../localizations.dart';
import '../../../../model/balance.dart';
import '../../../../model/cex_provider.dart';
import '../../../../model/coin.dart';
import '../../../../model/coin_balance.dart';
import '../../../../model/rewards_provider.dart';
import '../../../../utils/log.dart';
import '../../utils/utils.dart';
import 'coin_detail/coin_detail.dart';
import 'copy_dialog.dart';
import '../../app_config/app_config.dart';

class ItemCoin extends StatefulWidget {
  const ItemCoin({
    Key key,
    @required this.mContext,
    this.showAlternateColor,
    this.coinBalance,
  }) : super(key: key);

  final bool showAlternateColor;
  final CoinBalance coinBalance;
  final BuildContext mContext;

  @override
  _ItemCoinState createState() => _ItemCoinState();
}

class _ItemCoinState extends State<ItemCoin>
    with SingleTickerProviderStateMixin {
  RewardsProvider rewardsProvider;

  @override
  Widget build(BuildContext context) {
    final CexProvider cexProvider = Provider.of<CexProvider>(context);
    rewardsProvider ??= Provider.of<RewardsProvider>(context);
    final Coin coin = widget.coinBalance.coin;
    final Balance balance = widget.coinBalance.balance;
    final NumberFormat f = NumberFormat('###,##0.########');
    final List<Widget> actions = <Widget>[];
    final hasAssetBalance = double.parse(balance.getBalance()) > 0;
    if (hasAssetBalance) {
      Log(
        'coins_page:379',
        '${coin.abbr} balance: ${balance.balance}'
            '; locked_by_swaps: ${balance.lockedBySwaps}',
      );

      actions.add(
        SlidableAction(
          label: AppLocalizations.of(context).send,
          backgroundColor: Colors.white,
          icon: Icons.arrow_upward,
          onPressed: (context) async {
            await Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => CoinDetail(
                  coinBalance: widget.coinBalance,
                  isSendIsActive: true,
                ),
              ),
            );
            cexProvider.withdrawCurrency = null;
            setState(() {});
          },
        ),
      );
    }
    actions.add(
      SlidableAction(
        label: AppLocalizations.of(context).receive,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        icon: Icons.arrow_downward,
        onPressed: (mContext) {
          showCopyDialog(context, balance.address, coin);
        },
      ),
    );
    final showSwapAction = !coin.walletOnly &&
        // Hide swap action for wallet only mode (i.e. trading disabled mode)
        !appConfig.kIsWalletOnly &&
        double.parse(balance.getBalance()) > 0;
    if (showSwapAction) {
      actions.add(
        SlidableAction(
          label: AppLocalizations.of(context).swap.toUpperCase(),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          icon: Icons.swap_vert,
          onPressed: (context) {
            mainBloc.setCurrentIndexTab(1);
            swapHistoryBloc.isSwapsOnGoing = false;
            Future<dynamic>.delayed(const Duration(milliseconds: 100), () {
              swapBloc.updateSellCoin(widget.coinBalance);
              swapBloc.setEnabledSellField(true);
            });
          },
        ),
      );
    }

    return Opacity(
      opacity: coin.suspended ? 0.3 : 1,
      child: Slidable(
        startActionPane: coin.suspended
            ? null
            : ActionPane(
                motion: const DrawerMotion(),
                extentRatio: (actions != null && actions.isNotEmpty)
                    ? (actions.length * 0.3).clamp(0.3, 1.0)
                    : null,
                children: actions,
              ),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          extentRatio: 0.4,
          children: [
            SlidableAction(
              key: Key('disable-coin'),
              label: AppLocalizations.of(context).remove.toUpperCase(),
              backgroundColor: Theme.of(context).errorColor,
              icon: Icons.delete,
              onPressed: (context) async {
                if (coin.isDefault) {
                  await showCantRemoveDefaultCoin(context, coin);
                } else {
                  await showConfirmationRemoveCoin(context, coin);
                }
              },
            ),
          ],
        ),
        child: Builder(
          builder: (BuildContext context) {
            return Container(
              color: widget.showAlternateColor
                  ? Theme.of(context).cardColor.withOpacity(1)
                  : null,
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                onLongPress: () => Slidable.of(context).openStartActionPane(),
                onTap: () async {
                  final slidableController = Slidable.of(context);
                  if (slidableController != null) {
                    slidableController.close();
                  }
                  await Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) =>
                          CoinDetail(coinBalance: widget.coinBalance),
                    ),
                  );
                  cexProvider.withdrawCurrency = null;
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 64,
                      color: Color(int.parse(coin.colorCoin)),
                      width: 6,
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          child: coin.suspended
                              ? Icon(
                                  Icons.warning_rounded,
                                  size: 20,
                                  color: Colors.yellow[600],
                                )
                              : Image.asset(
                                  getCoinIconPath(balance.coin),
                                  fit: BoxFit.contain,
                                ),
                        ),
                        title: Text(
                          coin.name.toUpperCase(),
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        trailing: StreamBuilder(
                          initialData: settingsBloc.showBalance,
                          stream: settingsBloc.outShowBalance,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<bool> snapshot,
                          ) {
                            bool hidden = false;
                            if (snapshot.hasData && !snapshot.data)
                              hidden = true;
                            return Text(
                              cexProvider.convert(
                                widget.coinBalance.balanceUSD,
                                hidden: hidden,
                              ),
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(
                                    color: hasAssetBalance ? null : Colors.grey,
                                  ),
                            );
                          },
                        ),
                        subtitle: StreamBuilder<bool>(
                          initialData: settingsBloc.showBalance,
                          stream: settingsBloc.outShowBalance,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<bool> snapshot,
                          ) {
                            String amount =
                                f.format(double.parse(balance.getBalance()));
                            if (snapshot.hasData && !snapshot.data)
                              amount = '**.**';
                            return AutoSizeText(
                              '$amount ${coin.abbr}',
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .apply(fontSizeFactor: 0.9),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
