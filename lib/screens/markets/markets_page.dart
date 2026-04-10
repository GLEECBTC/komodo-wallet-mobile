import 'package:flutter/material.dart';
import 'package:komodo_dex/app_config/app_config.dart';
import 'package:provider/provider.dart';

import '../../localizations.dart';
import '../../model/coin.dart';
import '../../model/order_book_provider.dart';
import '../../utils/custom_tab_indicator.dart';
import '../markets/coins_price_list.dart';
import '../markets/order_book_page.dart';

class MarketsPage extends StatefulWidget {
  @override
  _MarketsPageState createState() => _MarketsPageState();
}

class _MarketsPageState extends State<MarketsPage>
    with TickerProviderStateMixin {
  TabController tabController;
  bool init = false;

  @override
  void initState() {
    super.initState();

    final tabControllerLength = appConfig.kIsWalletOnly ? 1 : 2;
    tabController = TabController(length: tabControllerLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final OrderBookProvider _orderBookProvider =
        Provider.of<OrderBookProvider>(context);
    final CoinsPair _activePair = _orderBookProvider.activePair;

    if (!init && (_activePair?.buy != null || _activePair?.sell != null)) {
      tabController.index = 1;
    }
    init = true;

    Widget _buildAppBar() {
      final bool _isSmallScreen = MediaQuery.of(context).size.height < 680;
      final Widget _tabsPanel = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              border: Border.all(color: Colors.grey, width: 1)),
          child: TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 16),
            indicator: CustomTabIndicator(context: context),
            controller: tabController,
            tabs: <Widget>[
              Tab(
                text: AppLocalizations.of(context).marketsPrice,
              ),
              if (!appConfig.kIsWalletOnly)
                Tab(
                  text: AppLocalizations.of(context).marketsOrderbook,
                )
            ],
          ),
        ),
      );

      return _isSmallScreen
          ? PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                flexibleSpace: SafeArea(
                    child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    _tabsPanel,
                  ],
                )),
                automaticallyImplyLeading: false,
              ),
            )
          : AppBar(
              title: Center(
                  child: Text(
                AppLocalizations.of(context).marketsTitle,
                key: const Key('markets-title'),
              )),
              bottom: PreferredSize(
                preferredSize: const Size(200.0, 70.0),
                child: Column(
                  children: <Widget>[
                    _tabsPanel,
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              automaticallyImplyLeading: false,
            );
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: Builder(builder: (BuildContext context) {
        return TabBarView(
          controller: tabController,
          children: <Widget>[
            CoinsPriceList(onItemTap: (Coin coin) {
              _orderBookProvider.activePair = CoinsPair(sell: coin, buy: null);
              tabController.index = 1;
            }),
            if (!appConfig.kIsWalletOnly) const OrderBookPage(),
          ],
        );
      }),
    );
  }
}
