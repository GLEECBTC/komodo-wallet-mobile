import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rational/rational.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../blocs/swap_bloc.dart';
import '../../../../../../localizations.dart';
import '../../../../../../model/addressbook_provider.dart';
import '../../../../../../model/order_book_provider.dart';
import '../../../../../../model/orderbook.dart';
import '../../../../../../utils/utils.dart';
import '../../../../../dex/trade/pro/create/receive/bid_details_dialog.dart';
import '../../../../../dex/trade/pro/create/receive/not_enough_volume_dialog.dart';

class MatchingBidsTable extends StatefulWidget {
  const MatchingBidsTable({
    this.headerHeight,
    this.lineHeight,
    this.bidsList,
    this.onCreateOrder,
  });

  final double headerHeight;
  final double lineHeight;
  final List<Ask> bidsList;
  final Function(Ask) onCreateOrder;

  @override
  _MatchingBidsTableState createState() => _MatchingBidsTableState();
}

class _MatchingBidsTableState extends State<MatchingBidsTable> {
  AddressBookProvider _addressBookProvider;
  OrderBookProvider _orderBookProvider;

  final Rational _sellAmount = swapBloc.amountSell;

  @override
  Widget build(BuildContext context) {
    _addressBookProvider ??= Provider.of<AddressBookProvider>(context);
    _orderBookProvider ??= Provider.of<OrderBookProvider>(context);

    final String _sellCoin = _orderBookProvider.activePair.sell.abbr;
    final String _receiveCoin = _orderBookProvider.activePair.buy.abbr;

    final List<TableRow> bidsRows = <TableRow>[];
    widget.bidsList
        ?.asMap()
        ?.forEach((int index, Ask bid) => bidsRows.add(_tableRow(bid, index)));

    return Table(
      columnWidths: const {
        0: IntrinsicColumnWidth(flex: 1),
        1: IntrinsicColumnWidth(),
        2: IntrinsicColumnWidth(),
        3: IntrinsicColumnWidth(flex: 1),
      },
      children: [
        TableRow(children: [
          Container(
            height: widget.headerHeight,
            alignment: const Alignment(-1, 0),
            padding: const EdgeInsets.only(
              left: 12,
              right: 6,
            ),
            child: Text(
              '${AppLocalizations.of(context).price}'
              ' ($_receiveCoin)',
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 14),
            ),
          ),
          Container(
            height: widget.headerHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
            ),
            child: Text(
              '${AppLocalizations.of(context).availableVolume}'
              ' ($_receiveCoin)',
              textAlign: TextAlign.end,
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 14),
            ),
          ),
          Container(
            height: widget.headerHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
            ),
            child: Text(
              '${AppLocalizations.of(context).availableVolume}'
              ' ($_sellCoin)',
              textAlign: TextAlign.right,
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 14),
            ),
          ),
          Container(
            height: widget.headerHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
              right: 12,
            ),
            child: Text(
              '${AppLocalizations.of(context).receive.toLowerCase()}'
              ' ($_receiveCoin)',
              textAlign: TextAlign.right,
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 14),
            ),
          ),
        ]),
        ...bidsRows,
      ],
    );
  }

  TableRow _tableRow(Ask bid, int index) {
    /// Convert the USD equivalent of the bid volume to the receive coin amount
    final double _bidVolume = bid.maxvolume.toDouble();
    final double convertedVolume = _bidVolume / bid.priceRat.toDouble();

    return TableRow(
      children: [
        TableRowInkWell(
          child: Container(
            height: widget.lineHeight,
            alignment: const Alignment(-1, 0),
            padding: const EdgeInsets.only(
              left: 12,
              right: 6,
            ),
            decoration: BoxDecoration(
                color: index % 2 > 0 ? null : Colors.white.withAlpha(10),
                border: Border(
                    top: BorderSide(
                  width: 1,
                  color: Theme.of(context).highlightColor,
                ))),
            key: Key('ask-item-$index'),
            child: Row(
              children: <Widget>[
                Text(
                  formatPrice(1 / double.parse(bid.price)),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 13,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.green
                            : Colors.greenAccent,
                      ),
                ),
                if (_addressBookProvider.contactByAddress(bid.address) != null)
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.account_circle,
                        size: 11,
                        color: Colors.white.withAlpha(150),
                      ),
                    ),
                  ),
                if (bid.isMine())
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.brightness_1,
                        size: 11,
                        color: Colors.green.withAlpha(150),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          onTap: () => _onBidTap(bid),
          onLongPress: () => _onBidLongPress(bid),
        ),
        TableRowInkWell(
          child: Container(
            height: widget.lineHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
            ),
            decoration: BoxDecoration(
                color: index % 2 > 0 ? null : Colors.white.withAlpha(10),
                border: Border(
                    top: BorderSide(
                  width: 1,
                  color: Theme.of(context).highlightColor,
                ))),
            child: Text(
              formatPrice(convertedVolume),
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 13),
            ),
          ),
          onTap: () => _onBidTap(bid),
          onLongPress: () => _onBidLongPress(bid),
        ),
        TableRowInkWell(
          child: Container(
            height: widget.lineHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
            ),
            decoration: BoxDecoration(
                color: index % 2 > 0 ? null : Colors.white.withAlpha(10),
                border: Border(
                    top: BorderSide(
                  width: 1,
                  color: Theme.of(context).highlightColor,
                ))),
            child: Text(
              formatPrice(convertedVolume * double.parse(bid.price)),
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 13),
            ),
          ),
          onTap: () => _onBidTap(bid),
          onLongPress: () => _onBidLongPress(bid),
        ),
        TableRowInkWell(
          child: Container(
            height: widget.lineHeight,
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(
              left: 6,
              right: 12,
            ),
            decoration: BoxDecoration(
                color: index % 2 > 0 ? null : Colors.white.withAlpha(10),
                border: Border(
                    top: BorderSide(
                  width: 1,
                  color: Theme.of(context).highlightColor,
                ))),
            child: Text(
              formatPrice(bid.getReceiveAmount(_sellAmount)),
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          onTap: () => _onBidTap(bid),
          onLongPress: () => _onBidLongPress(bid),
        )
      ],
    );
  }

  Future<void> _onBidTap(Ask bid) async {
    final bool showOrderDetailsByTap = (await SharedPreferences.getInstance())
            .getBool('showOrderDetailsByTap') ??
        true;

    showOrderDetailsByTap ? _showDetails(bid) : _createOrder(bid);
  }

  Future<void> _onBidLongPress(Ask bid) async {
    final bool showOrderDetailsByTap = (await SharedPreferences.getInstance())
            .getBool('showOrderDetailsByTap') ??
        true;

    showOrderDetailsByTap ? _createOrder(bid) : _showDetails(bid);
  }

  void _showDetails(Ask bid) {
    openBidDetailsDialog(
      context: context,
      bid: bid,
      onSelect: () => _createOrder(bid),
    );
  }

  void _createOrder(Ask bid) {
    final Rational maxSellAmt = swapBloc.maxTakerVolume ??
        Rational.parse(swapBloc.sellCoinBalance.balance.balance.toString());
    final bool isEnoughVolume =
        !(bid.minVolume != null && maxSellAmt < bid.minVolume);

    if (isEnoughVolume) {
      Navigator.of(context).pop();
      widget.onCreateOrder(bid);
    } else {
      openNotEnoughVolumeDialog(context, bid);
    }
  }
}
