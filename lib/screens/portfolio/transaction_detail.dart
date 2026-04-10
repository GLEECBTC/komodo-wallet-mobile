import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:komodo_dex/model/coin_type.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../blocs/coins_bloc.dart';
import '../../blocs/main_bloc.dart';
import '../../blocs/settings_bloc.dart';
import '../../localizations.dart';
import '../../model/addressbook_provider.dart';
import '../../model/cex_provider.dart';
import '../../model/coin_balance.dart';
import '../../model/transaction_data.dart';
import '../../services/db/database.dart';
import '../../utils/utils.dart';
import '../addressbook/addressbook_page.dart';
import '../authentification/lock_screen.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({this.transaction, this.coinBalance});

  final Transaction transaction;
  final CoinBalance coinBalance;

  @override
  _TransactionDetailState createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  void dispose() {
    mainBloc.isUrlLaucherIsOpen = false;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LockScreen(
      context: context,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              splashRadius: 24,
              icon: Icon(Icons.share),
              onPressed: () {
                final String fromOrTo = double.parse(
                            widget.transaction.myBalanceChange) >
                        0
                    ? '${AppLocalizations.of(context).from}: ${widget.transaction.from[0]}'
                    : '${AppLocalizations.of(context).to} ${widget.transaction.to.length > 1 ? widget.transaction.to[1] : widget.transaction.to[0]}';
                String fee = '';
                if (widget.transaction.feeDetails != null &&
                    widget.transaction.feeDetails.amount != null) {
                  fee = widget.transaction.feeDetails.amount.toString();
                }
                final String dataToShare =
                    'Transaction detail:\nAmount: ${widget.transaction.myBalanceChange} ${widget.transaction.coin}\nDate: ${widget.transaction.getTimeFormat()}\nBlock: ${widget.transaction.blockHeight}\nConfirmations: ${widget.transaction.confirmations}\nFee: $fee ${widget.transaction.coin}\n$fromOrTo\nTx Hash: ${widget.transaction.txHash}';
                mainBloc.isUrlLaucherIsOpen = true;

                Share.share(dataToShare);
              },
            ),
            IconButton(
              splashRadius: 24,
              icon: Icon(Icons.open_in_browser),
              onPressed: () {
                String middle = widget.coinBalance.coin.explorerTxUrl.isEmpty
                    ? 'tx/'
                    : widget.coinBalance.coin.explorerTxUrl;

                CoinType coinType = widget.coinBalance.coin.type;
                String hash = widget.transaction.txHash;
                if (coinType == CoinType.iris || coinType == CoinType.cosmos) {
                  hash = hash.toUpperCase();
                }
                launchURL(widget.coinBalance.coin.explorerUrl + middle + hash);
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[_buildHeader(), _buildListDetails()],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final Transaction tx = widget.transaction;
    return Container(
      height: 200,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: StreamBuilder<bool>(
                          initialData: settingsBloc.showBalance,
                          stream: settingsBloc.outShowBalance,
                          builder: (BuildContext context,
                              AsyncSnapshot<bool> snapshot) {
                            final amount = deci(tx.myBalanceChange);
                            String amountString = deci2s(amount);
                            if (snapshot.hasData && snapshot.data == false) {
                              amountString =
                                  (amount < deci(0) ? '-' : '') + '**.**';
                            }
                            return InkWell(
                              onTap: () => copyToClipBoard(context, amountString),
                              child: AutoSizeText(
                                '$amountString ${tx.coin}',
                                style: Theme.of(context).textTheme.headline5,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }),
                    ),
                  ),
                  _buildUsdAmount(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  tx.getTimeFormat(),
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.grey,
                      ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    color: tx.confirmations > 0
                        ? Colors.lightGreen
                        : Colors.red.shade500,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: tx.confirmations > 0
                      ? Text(AppLocalizations.of(context).txConfirmed)
                      : Text(AppLocalizations.of(context).txNotConfirmed),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUsdAmount() {
    final CexProvider cexProvider = Provider.of<CexProvider>(context);

    const Widget _progressIndicator = SizedBox(
      width: 16,
      height: 16,
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
      ),
    );

    Widget _usdAmount(String priceForOne) {
      if (priceForOne == null) return _progressIndicator;

      if (double.parse(priceForOne) == 0) return SizedBox();

      return StreamBuilder<bool>(
          initialData: settingsBloc.showBalance,
          stream: settingsBloc.outShowBalance,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            bool hidden = false;
            final double amount = double.parse(priceForOne) *
                double.parse(widget.transaction.myBalanceChange);
            if (snapshot.hasData && snapshot.data == false) hidden = true;

            return Text(
              cexProvider.convert(amount, hidden: hidden),
              style: Theme.of(context).textTheme.bodyText1,
            );
          });
    }

    if (widget.coinBalance.priceForOne != null)
      return _usdAmount(widget.coinBalance.priceForOne);

    return StreamBuilder(
        stream: coinsBloc.outCoins,
        builder:
            (BuildContext context, AsyncSnapshot<List<CoinBalance>> snapshot) {
          if (!snapshot.hasData) return _progressIndicator;

          String priceForOne;
          try {
            priceForOne = snapshot.data
                .firstWhere((CoinBalance balance) =>
                    balance.coin.abbr == widget.coinBalance.coin.abbr)
                .priceForOne;
          } catch (_) {}

          return _usdAmount(priceForOne);
        });
  }

  Widget _buildListDetails() {
    return Column(
      children: <Widget>[
        if (widget.transaction.blockHeight > 0)
          ItemTransationDetail(
              title: AppLocalizations.of(context).txBlock,
              data: widget.transaction.blockHeight.toString()),
        ItemTransationDetail(
            title: AppLocalizations.of(context).txConfirmations,
            data: widget.transaction.confirmations.toString()),
        ItemTransationDetail(
            title: AppLocalizations.of(context).txFee, data: _getFee()),
        double.parse(widget.transaction.myBalanceChange) > 0
            ? widget.transaction.from.isEmpty
                ? SizedBox()
                : ItemTransationDetail(
                    title: AppLocalizations.of(context).from,
                    data: widget.transaction.from[0])
            : widget.transaction.to.isEmpty
                ? SizedBox()
                : ItemTransationDetail(
                    title: AppLocalizations.of(context).to,
                    data: widget.transaction.getToAddress().isNotEmpty
                        ? widget.transaction.getToAddress()[0]
                        : ''),
        ItemTransationDetail(
            title: AppLocalizations.of(context).txHash,
            data: widget.transaction.txHash),
        if (widget.transaction.memo.isNotEmpty)
          ItemTransationDetail(
              title: AppLocalizations.of(context).memo,
              data: widget.transaction.memo),
        ItemTransactionNote(
            title: AppLocalizations.of(context).noteTitle,
            txHash: widget.transaction.txHash),
      ],
    );
  }

  String _getFee() {
    String fee = '';

    if (widget.transaction.feeDetails?.amount == null ||
        (widget.transaction.feeDetails?.amount?.isEmpty ?? true)) {
      fee = widget.transaction.feeDetails?.totalFee?.toString() ??
          widget.transaction.transactionFee;
    } else {
      fee = widget.transaction.feeDetails?.amount.toString();
    }

    try {
      // QTUM gas-refund (coinbase) txs
      if (double.parse(fee) < 0 && widget.transaction.coin == 'QTUM')
        return '0';
    } catch (_) {}

    fee = cutTrailingZeros(formatPrice(fee, 8));

    String feeCoin =
        widget.transaction?.feeDetails?.coin ?? widget.transaction.coin;
    if (feeCoin == null || feeCoin.isEmpty) feeCoin = widget.transaction.coin;

    return '$fee $feeCoin';
  }
}


class ItemTransationDetail extends StatelessWidget {
  const ItemTransationDetail({this.title, this.data});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    final AddressBookProvider addressBookProvider =
        Provider.of<AddressBookProvider>(context);
    final Contact contact = addressBookProvider.contactByAddress(data);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                if (contact == null) {
                  copyToClipBoard(context, data);
                } else {
                  Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => AddressBookPage(
                        contact: contact,
                      ),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: contact == null
                    ? AutoSizeText(
                        data,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.grey,
                            ),
                        textAlign: TextAlign.end,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          AutoSizeText(
                            contact.name,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.white,
                                    ),
                          )
                        ],
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemTransactionNote extends StatefulWidget {
  const ItemTransactionNote({
    @required this.title,
    @required this.txHash,
  }) : assert(txHash != null);

  final String title;
  final String txHash;

  @override
  _ItemTransactionNoteState createState() => _ItemTransactionNoteState();
}

class _ItemTransactionNoteState extends State<ItemTransactionNote> {
  String noteText;
  final noteTextController = TextEditingController();
  bool isEdit = false;
  bool isExpanded = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Db.getNote(widget.txHash).then((n) {
      setState(() {
        noteText = n;
        noteTextController.text = noteText;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.title,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: InkWell(
            onTap: isEdit
                ? null
                : () {
                    setState(() {
                      isEdit = true;
                    });

                    noteTextController.text = noteTextController.text.trim();
                    noteText = noteTextController.text;
                    focusNode.requestFocus();
                    if (noteText != null && noteText.isNotEmpty)
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                  },
            child: Row(
              children: [
                Expanded(
                  child: isEdit
                      ? TextField(
                          controller: noteTextController,
                          maxLength: 200,
                          minLines: 1,
                          maxLines: 8,
                          focusNode: focusNode,
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            (noteText == null || noteText.isEmpty)
                                ? AppLocalizations.of(context).notePlaceholder
                                : noteText,
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: Colors.grey,
                                    ),
                            maxLines: isExpanded ? null : 1,
                            overflow: isExpanded ? null : TextOverflow.ellipsis,
                          ),
                        ),
                ),
                IconButton(
                  splashRadius: 24,
                  icon: Icon(isEdit ? Icons.check : Icons.edit),
                  onPressed: () {
                    setState(
                      () {
                        if (isEdit) {
                          noteTextController.text =
                              noteTextController.text.trim();
                          noteText = noteTextController.text;
                          noteText.isNotEmpty
                              ? Db.saveNote(widget.txHash, noteText)
                              : Db.deleteNote(widget.txHash);

                          setState(() {
                            isExpanded = false;
                          });
                        } else {
                          focusNode.requestFocus();
                        }

                        setState(() {
                          isEdit = !isEdit;
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          )),
          if (noteText?.isNotEmpty ?? false)
            IconButton(
              icon: Icon(Icons.copy),
              onPressed: () {
                copyToClipBoard(context, noteText);
              },
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    noteTextController.dispose();
    super.dispose();
  }
}
