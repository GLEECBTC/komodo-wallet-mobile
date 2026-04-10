import 'package:flutter/material.dart';

import '../../../blocs/coins_bloc.dart';
import '../../../model/coin.dart';
import '../../../model/coin_balance.dart';
import '../../localizations.dart';
import '../../services/mm_service.dart';
import '../markets/build_coin_price_list_item.dart';

class CoinsPriceList extends StatefulWidget {
  const CoinsPriceList({this.onItemTap});

  final Function(Coin) onItemTap;

  @override
  _CoinsPriceListState createState() => _CoinsPriceListState();
}

class _CoinsPriceListState extends State<CoinsPriceList> {
  int touchCounter = 0;

  @override
  void initState() {
    super.initState();

    if (mmSe.running) coinsBloc.updateCoinBalances();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CoinBalance>>(
      stream: coinsBloc.outCoins,
      builder:
          (BuildContext context, AsyncSnapshot<List<CoinBalance>> snapshot) {
        if (snapshot.data != null && snapshot.data.isNotEmpty) {
          final List<CoinBalance> _sortedList =
              coinsBloc.sortCoinsWithoutTestCoins(snapshot.data);
          return _sortedList.isEmpty
              ? Center(
                  child: Text(
                    AppLocalizations.of(context).noCoinFound,
                    style: const TextStyle(fontSize: 18),
                  ),
                )
              : Listener(
                  onPointerDown: (_) {
                    setState(() {
                      touchCounter++;
                    });
                  },
                  onPointerUp: (_) {
                    setState(() {
                      touchCounter--;
                    });
                  },
                  child: ListView.builder(
                    physics: touchCounter > 1
                        ? const NeverScrollableScrollPhysics()
                        : const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _sortedList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Coin coin = _sortedList[index].coin;
                      final String coinAbbr = coin.abbr.toUpperCase();
                      return BuildCoinPriceListItem(
                        key: Key('coin-$coinAbbr'),
                        coinBalance: _sortedList[index],
                        onTap: () => widget.onItemTap(coin),
                      );
                    },
                  ),
                );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
