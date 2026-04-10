import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:komodo_dex/blocs/authenticate_bloc.dart';
import 'package:komodo_dex/packages/rebranding/rebranding_dialog.dart';
import 'package:komodo_dex/packages/rebranding/rebranding_provider.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_bloc.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_state.dart';
import 'package:komodo_dex/packages/z_coin_activation/widgets/z_coin_status_list_tile.dart';
import 'package:komodo_dex/screens/portfolio/animated_asset_proportions_graph.dart';
import 'package:komodo_dex/widgets/animated_collapse.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../blocs/coins_bloc.dart';
import '../../../../blocs/settings_bloc.dart';
import '../../../../localizations.dart';
import '../../../../model/cex_provider.dart';
import '../../../../model/coin_balance.dart';
import '../../../../services/mm_service.dart';
import '../portfolio/loading_coin.dart';
import 'add_coin_fab.dart';
import 'item_coin.dart';

class CoinsPage extends StatefulWidget {
  @override
  _CoinsPageState createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  CexProvider _cexProvider;
  ScrollController _scrollController;
  BuildContext contextMain;
  NumberFormat f = NumberFormat('###,##0.0#');
  double _heightSliver;

  StreamSubscription<bool> _loginSubscription;

  Timer _timer;

  // Rebranding
  Future<void> showRebrandingDialog(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: true, // allow dismiss when clicking outside
      builder: (BuildContext context) => RebrandingDialog(),
    ).then((_) {
      Provider.of<RebrandingProvider>(context, listen: false)
          .closeThisSession();
    });
  }

  void _scrollListener() {
    setState(() {});
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    if (mmSe.running) coinsBloc.updateCoinBalances();

    // Subscribe to the outIsLogin stream
    /* Disabled rebranding pop-up
    _loginSubscription = authBloc.outIsLogin.listen((isLogin) async {
      if (isLogin) {
        final rebrandingNotifier =
            Provider.of<RebrandingProvider>(context, listen: false);

        // Wait for the prefs to load
        await rebrandingNotifier.prefsLoaded;

        if (rebrandingNotifier.shouldShowRebrandingDialog) {
          showRebrandingDialog(context).ignore();
        }

        WidgetsBinding.instance.addPostFrameCallback((_) async {
          if (kDebugMode && !await _hasAgreedNoTrading()) {
            _showDebugModeDialog().ignore();
          }
        });
      }
    });
    */

    super.initState();
  }

  @override
  void dispose() {
    _loginSubscription?.cancel()?.ignore();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _cexProvider = Provider.of<CexProvider>(context);
    _heightSliver = (kToolbarHeight + MediaQuery.of(context).padding.top);

    final bool isCollapsed = _scrollController.hasClients &&
        _scrollController.offset > _heightSliver;

    return Scaffold(
      floatingActionButton: AddCoinFab(key: Key('add-coin-button')),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 4,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: _heightSliver,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return AnimatedContainer(
                    key: Key('animated-container-portfolio-gradient'),
                    duration: Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      gradient: backgroundGradient,
                    ),
                    child: SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          StreamBuilder<List<CoinBalance>>(
                            key: Key('stream-builder-coin-balance'),
                            initialData: coinsBloc.coinBalance,
                            stream: coinsBloc.outCoins,
                            builder: (
                              BuildContext context,
                              AsyncSnapshot<List<CoinBalance>> snapshot,
                            ) {
                              if (snapshot.data != null) {
                                double totalBalanceUSD = 0;

                                for (CoinBalance coinBalance in snapshot.data) {
                                  totalBalanceUSD += coinBalance.balanceUSD;
                                }
                                return StreamBuilder<bool>(
                                  initialData: settingsBloc.showBalance,
                                  stream: settingsBloc.outShowBalance,
                                  builder: (
                                    BuildContext context,
                                    AsyncSnapshot<bool> snapshot,
                                  ) {
                                    bool hidden = false;
                                    if (snapshot.hasData && !snapshot.data) {
                                      hidden = true;
                                    }
                                    final String amountText =
                                        _cexProvider.convert(
                                      totalBalanceUSD,
                                      hidden: hidden,
                                    );
                                    return Expanded(
                                      child: Stack(
                                        fit: StackFit.passthrough,
                                        children: [
                                          Center(
                                            child: AutoSizeText(
                                              amountText,
                                              maxFontSize: 24,
                                              minFontSize: 12,
                                              maxLines: 1,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5
                                                  .copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: AnimatedOpacity(
                                              opacity:
                                                  innerBoxIsScrolled ? 0 : 1,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.swap_horiz,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () => _cexProvider
                                                    .switchCurrency(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Center(
                                  child: const CircularProgressIndicator(),
                                );
                              }
                            },
                          ),
                          AnimatedCollapse(
                            key: Key('animated-collapse-bar-graph'),
                            fullHeight: 8,
                            isCollapsed: isCollapsed,
                            child: AnimatedAssetProportionsBarGraph(
                              key: Key('bar-graph'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              automaticallyImplyLeading: false,
            ),
            BlocBuilder<ZCoinActivationBloc, ZCoinActivationState>(
              key: Key('bloc-builder-zcoin-activation'),
              builder: (context, state) {
                final isActivationInProgress =
                    state is ZCoinActivationInProgess;

                return SliverToBoxAdapter(
                  key: Key('sliver-to-box-adapter-zcoin-status'),
                  child: AnimatedCollapse(
                    isCollapsed: !isActivationInProgress,
                    fullHeight: 64,
                    child: Card(
                      child: ZCoinStatusWidget(
                        key: Key('zcoin-status-widget'),
                      ),
                      margin: EdgeInsets.zero,
                    ),
                  ),
                );
              },
            ),
          ];
        },
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: const ListCoins(),
        ),
      ),
    );
  }

  LinearGradient get backgroundGradient {
    final progress = ((_scrollController.offset - _heightSliver) /
            (_heightSliver -
                (kToolbarHeight + MediaQuery.of(context).padding.top)))
        .clamp(0.0, 1.0);

    final colors = [
      Color.fromRGBO(38, 179, 255, 1),
      Color.fromRGBO(0, 30, 34, 1),
    ].map((color) => color.withOpacity((1 - progress).clamp(0.2, 1))).toList();

    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: const <double>[0.01, 1],
      colors: colors,
    );
  }

  // Method to show an alert dialog with an option to agree if the app is in
  // debug mode stating that trading features may not be used for actual trading
  // and that only test assets/networks may be used.
  Future<void> _showDebugModeDialog() async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Debug mode'),
          content: const Text(
            'This app is in debug mode. Trading features may not be used for '
            'actual trading. Only test assets/networks may be used.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _saveAgreedState().ignore();
              },
              child: const Text('I agree'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _saveAgreedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('wallet_only_agreed', true);
  }

  Future<bool> _hasAgreedNoTrading() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('wallet_only_agreed') ?? false;
  }
}

class LoadAsset extends StatefulWidget {
  const LoadAsset({Key key}) : super(key: key);

  @override
  LoadAssetState createState() {
    return LoadAssetState();
  }
}

class LoadAssetState extends State<LoadAsset> {
  final Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CoinBalance>>(
      initialData: coinsBloc.coinBalance,
      stream: coinsBloc.outCoins,
      builder:
          (BuildContext context, AsyncSnapshot<List<CoinBalance>> snapshot) {
        final List<Widget> listRet = <Widget>[];
        if (snapshot.data != null) {
          int assetNumber = 0;

          for (CoinBalance coinBalance in snapshot.data) {
            if (double.parse(coinBalance.balance.getBalance()) > 0) {
              assetNumber++;
            }
          }

          listRet.add(
            Icon(
              Icons.show_chart,
              color: color.withOpacity(0.8),
            ),
          );
          listRet.add(
            Text(
              AppLocalizations.of(context).numberAssets(assetNumber.toString()),
              style: Theme.of(context).textTheme.caption.copyWith(color: color),
            ),
          );
          listRet.add(
            Icon(
              Icons.chevron_right,
              color: color.withOpacity(0.8),
            ),
          );
        } else {
          listRet.add(
            SizedBox(
              height: 10,
              width: 10,
              child: const CircularProgressIndicator(
                strokeWidth: 1.0,
              ),
            ),
          );
        }
        return SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: listRet,
          ),
        );
      },
    );
  }
}

class ListCoins extends StatefulWidget {
  const ListCoins({Key key}) : super(key: key);

  @override
  ListCoinsState createState() {
    return ListCoinsState();
  }
}

class ListCoinsState extends State<ListCoins> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    if (mmSe.running) coinsBloc.updateCoinBalances();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CoinBalance>>(
      initialData: coinsBloc.coinBalance,
      stream: coinsBloc.outCoins,
      builder:
          (BuildContext context, AsyncSnapshot<List<CoinBalance>> snapshot) {
        return RefreshIndicator(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Theme.of(context).colorScheme.secondary,
          key: _refreshIndicatorKey,
          onRefresh: () => coinsBloc.updateCoinBalances(),
          child: Builder(
            builder: (BuildContext context) {
              if (snapshot.data != null && snapshot.data.isNotEmpty) {
                final List<CoinBalance> _coinsSorted =
                    coinsBloc.sortCoins(snapshot.data);

                return SlidableAutoCloseBehavior(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(0),
                    key: const Key('list-view-coins'),
                    itemCount: _coinsSorted.length,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCoin(
                        key: Key(
                          'coin-list-${_coinsSorted[index].coin.abbr}',
                        ),
                        showAlternateColor: index.isOdd,
                        mContext: context,
                        coinBalance: _coinsSorted[index],
                      );
                      // }
                    },
                    separatorBuilder: (context, _) => Divider(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return LoadingCoin();
              } else if (snapshot.data.isEmpty) {
                // MRC: Add center to fix random UI glitch
                // due to loading Add Button
                return Center(
                  child: Text(AppLocalizations.of(context).pleaseAddCoin),
                );
              } else {
                return SizedBox();
              }
            },
          ),
        );
      },
    );
  }
}
