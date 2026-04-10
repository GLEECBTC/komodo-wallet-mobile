import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rational/rational.dart';

import '../../app_config/app_config.dart';
import '../../app_config/theme_data.dart';
import '../../blocs/coins_bloc.dart';
import '../../localizations.dart';
import '../../model/addressbook_provider.dart';
import '../../model/cex_provider.dart';
import '../../model/order_book_provider.dart';
import '../../model/orderbook.dart';
import '../../utils/utils.dart';
import '../../widgets/cex_data_marker.dart';
import '../addressbook/addressbook_page.dart';

class BuildOrderDetails extends StatefulWidget {
  const BuildOrderDetails(this.order, {this.sellAmount});

  final Ask order;
  final Rational sellAmount;

  @override
  _BuildOrderDetailsState createState() => _BuildOrderDetailsState();
}

class _BuildOrderDetailsState extends State<BuildOrderDetails> {
  OrderBookProvider _orderBookProvider;
  AddressBookProvider _addressBookProvider;
  CexProvider _cexProvider;
  bool _isAsk;
  CoinsPair _activePair;
  Contact _contact;

  @override
  Widget build(BuildContext context) {
    _orderBookProvider ??= Provider.of<OrderBookProvider>(context);
    _addressBookProvider ??= Provider.of<AddressBookProvider>(context);
    _cexProvider ??= Provider.of<CexProvider>(context);
    _contact = _addressBookProvider.contactByAddress(widget.order.address);
    _activePair = _orderBookProvider.activePair;
    _isAsk = _activePair.sell.abbr == widget.order.coin;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 16,
        right: 12,
        top: 12,
        bottom: 24,
      ),
      child: Column(
        children: <Widget>[
          _buildOwnerWarning(),
          Table(
            columnWidths: const {
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(1.0),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              ..._buildSellDetails(),
              ..._buildAddress(),
              ..._buildOrderDetails(),
              const TableRow(children: [
                SizedBox(height: 15),
                SizedBox(height: 15),
              ]),
              ..._buildPrice(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOwnerWarning() {
    final String orderAdress = widget.order.address;
    final String myAddress =
        coinsBloc.getBalanceByAbbr(widget.order.coin)?.balance?.address;

    if (orderAdress.toLowerCase() != myAddress.toLowerCase()) return SizedBox();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(children: [
          WidgetSpan(
              alignment: PlaceholderAlignment.top,
              child: Icon(
                Icons.brightness_1,
                size: 13,
                color: _isAsk ? Colors.red : Colors.green,
              )),
          TextSpan(
            text: AppLocalizations.of(context).ownOrder,
            style: TextStyle(
                color: _isAsk ? Colors.red : Colors.green, fontSize: 20),
          ),
        ]),
      ),
    );
  }

  List<TableRow> _buildPrice() {
    return [
      TableRow(
        children: [
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsPrice,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: <Widget>[
                Text(
                  formatPrice(_isAsk
                      ? widget.order.price
                      : (1 / double.parse(widget.order.price)).toString()),
                  style: TextStyle(color: _isAsk ? Colors.red : Colors.green),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    '${_activePair.buy.abbr} / 1${_activePair.sell.abbr}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      TableRow(
        children: [
          SizedBox(),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: <Widget>[
                Text(
                  formatPrice(!_isAsk
                      ? widget.order.price
                      : (1 / double.parse(widget.order.price)).toString()),
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                      '${_activePair.sell.abbr} / 1${_activePair.buy.abbr}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      ..._buildCexchangeRate(),
    ];
  }

  List<TableRow> _buildCexchangeRate() {
    final double cexPrice = _cexProvider.getCexRate() ?? 0.0;
    if (cexPrice == 0 || widget.sellAmount == null) return [];

    final double orderPrice = 1 / double.parse(widget.order.price);
    double delta = (orderPrice - cexPrice) * 100 / cexPrice;
    if (delta < -99.99) delta = -99.99;
    if (delta > 99.99) delta = 99.99;
    final num sign = delta.sign;

    String message;
    switch (sign) {
      case 1:
        {
          message = AppLocalizations.of(context)
              .orderDetailsExpedient(formatPrice(delta, 2));
          break;
        }
      case -1:
        {
          message = AppLocalizations.of(context)
              .orderDetailsExpensive(formatPrice(delta, 2));
          break;
        }
      default:
        {
          message = AppLocalizations.of(context).orderDetailsIdentical;
        }
    }

    return [
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            child: CexMarker(context),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            height: 40,
            alignment: Alignment.centerLeft,
            child: Text(
              message,
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? cexColorLight.withAlpha(150)
                      : cexColor.withAlpha(150)),
            ),
          ),
        ],
      )
    ];
  }

  List<TableRow> _buildOrderDetails() {
    if (widget.sellAmount != null) return [];

    return [
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsSells,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 7,
                      backgroundImage: _isAsk
                          ? AssetImage(getCoinIconPath(_activePair.sell.abbr))
                          : AssetImage(getCoinIconPath(_activePair.buy.abbr)),
                    ),
                    const SizedBox(width: 4),
                    Text(_isAsk ? _activePair.sell.abbr : _activePair.buy.abbr),
                    const SizedBox(width: 12),
                    Text(
                      formatPrice(widget.order.maxvolume.toString()),
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
                _buildMinVolume(),
              ],
            ),
          ),
        ],
      ),
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsFor,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 7,
                  backgroundImage: _isAsk
                      ? AssetImage(getCoinIconPath(_activePair.buy.abbr))
                      : AssetImage(getCoinIconPath(_activePair.sell.abbr)),
                ),
                const SizedBox(width: 4),
                Text(_isAsk ? _activePair.buy.abbr : _activePair.sell.abbr),
                const SizedBox(width: 12),
                Text(
                  formatPrice(
                      '${widget.order.maxvolume.toDouble() * double.parse(widget.order.price)}'),
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }

  bool _isEnoughVolume() {
    if (widget.order.minVolume == null) return true;
    if (widget.sellAmount == null) return true;

    final double myVolume =
        widget.order.getReceiveAmount(widget.sellAmount).toDouble();

    return myVolume >= widget.order.minVolume.toDouble();
  }

  Widget _buildMinVolume() {
    if (widget.order.minRelVolume == null) return SizedBox();
    if (widget.order.minRelVolume <= Rational.parse('0.00777'))
      return SizedBox();

    return Row(
      children: <Widget>[
        SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: _isEnoughVolume() ? null : Colors.orange.withAlpha(200),
            borderRadius: BorderRadius.circular(3),
          ),
          padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
          child: Row(
            children: [
              Text(
                '${AppLocalizations.of(context).orderDetailsMin} '
                '${widget.order.coin} '
                '${cutTrailingZeros(formatPrice(widget.order.minRelVolume))}',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: _isEnoughVolume()
                      ? null
                      : Theme.of(context).brightness == Brightness.light
                          ? Colors.white
                          : Theme.of(context).primaryColorDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<TableRow> _buildSellDetails() {
    if (widget.sellAmount == null) return [];

    return [
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsReceive,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 7,
                      backgroundImage: _isAsk
                          ? AssetImage(getCoinIconPath(_activePair.sell.abbr))
                          : AssetImage(getCoinIconPath(_activePair.buy.abbr)),
                    ),
                    const SizedBox(width: 4),
                    Text(_isAsk ? _activePair.sell.abbr : _activePair.buy.abbr),
                    const SizedBox(width: 12),
                    Text(
                      cutTrailingZeros(widget.order
                          .getReceiveAmount(widget.sellAmount)
                          .toStringAsFixed(appConfig.tradeFormPrecision)),
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
                _buildMinVolume(),
              ],
            ),
          ),
        ],
      ),
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsSpend,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 7,
                  backgroundImage: _isAsk
                      ? AssetImage(getCoinIconPath(_activePair.buy.abbr))
                      : AssetImage(getCoinIconPath(_activePair.sell.abbr)),
                ),
                const SizedBox(width: 4),
                Text(_isAsk ? _activePair.buy.abbr : _activePair.sell.abbr),
                const SizedBox(width: 12),
                Text(
                  cutTrailingZeros((widget.order
                              .getReceiveAmount(widget.sellAmount)
                              .toDouble() *
                          double.parse(widget.order.price))
                      .toStringAsFixed(appConfig.tradeFormPrecision)),
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }

  List<TableRow> _buildAddress() {
    return [
      TableRow(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 6),
            child: Text(AppLocalizations.of(context).orderDetailsAddress,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          _contact == null ? _buildAddressButton() : _buildContactButton(),
        ],
      ),
    ];
  }

  Widget _buildAddressButton() {
    return InkWell(
      onTap: () => copyToClipBoard(context, widget.order.address),
      child: Container(
        padding: const EdgeInsets.only(left: 6, right: 12),
        height: 40,
        child: truncateMiddle(widget.order.address),
      ),
    );
  }

  Widget _buildContactButton() {
    return InkWell(
      onTap: () => Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => AddressBookPage(
            contact: _contact,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 6),
        height: 40,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 14,
            ),
            const SizedBox(width: 8),
            Text(
              _contact.name,
            )
          ],
        ),
      ),
    );
  }
}
