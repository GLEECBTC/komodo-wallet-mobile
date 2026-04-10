import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../app_config/app_config.dart';
import '../../../../../blocs/coin_detail_bloc.dart';
import '../../../../../blocs/coins_bloc.dart';
import '../../../../../blocs/dialog_bloc.dart';
import '../../../../../localizations.dart';
import '../../../../../model/coin_balance.dart';
import '../../../../../model/coin_type.dart';
import '../../../../../services/lock_service.dart';
import '../../../../../services/mm_service.dart';
import '../../../../../utils/utils.dart';
import '../../../../../widgets/custom_simple_dialog.dart';
import '../../../../../widgets/primary_button.dart';
import '../../../../../widgets/secondary_button.dart';
import '../../../../portfolio/coin_detail/steps_withdraw.dart/amount_address_step/address_field.dart';
import '../../../../portfolio/coin_detail/steps_withdraw.dart/amount_address_step/amount_field.dart';
import '../../../../portfolio/coin_detail/steps_withdraw.dart/amount_address_step/custom_fee.dart';

class AmountAddressStep extends StatefulWidget {
  const AmountAddressStep({
    Key key,
    this.onMaxValue,
    this.focusNode,
    this.amountController,
    this.addressController,
    this.autoFocus = false,
    this.onWithdrawPressed,
    this.onCancel,
    this.coinBalance,
    this.paymentUriInfo,
    this.scrollController,
    this.memoController,
  }) : super(key: key);

  final Function onCancel;
  final Function onMaxValue;
  final FocusNode focusNode;
  final Function onWithdrawPressed;
  final TextEditingController amountController;
  final TextEditingController addressController;
  final TextEditingController memoController;
  final bool autoFocus;
  final CoinBalance coinBalance;
  final PaymentUriInfo paymentUriInfo;
  final ScrollController scrollController;

  @override
  _AmountAddressStepState createState() => _AmountAddressStepState();
}

class _AmountAddressStepState extends State<AmountAddressStep> {
  String barcode = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool autovalidate = false;
  bool isWithdrawPressed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      handlePaymentData(widget.paymentUriInfo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        autovalidateMode:
            autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AmountField(
              onMaxValue: widget.onMaxValue,
              focusNode: widget.focusNode,
              controller: widget.amountController,
              autoFocus: widget.autoFocus,
              coinBalance: widget.coinBalance,
              onChanged: onChanged,
            ),
            AddressField(
              addressFormat: widget.coinBalance.coin.addressFormat,
              controller: widget.addressController,
              onScan: scan,
              coin: widget.coinBalance.coin,
              onChanged: onChanged,
            ),
            // Only show for tendermint tokens
            if (widget.coinBalance.coin.type == CoinType.cosmos ||
                widget.coinBalance.coin.type == CoinType.iris)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  key: const Key('send-memo-field'),
                  autofocus: false,
                  autocorrect: false,
                  maxLength: 256,
                  enableSuggestions: false,
                  controller: widget.memoController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context).memo,
                    hintText: AppLocalizations.of(context).optional,
                  ),
                ),
              ),
            // Temporary disable custom fee for qrc20 tokens
            if (widget.coinBalance.coin.type != CoinType.qrc &&
                widget.coinBalance.coin.type != CoinType.cosmos &&
                widget.coinBalance.coin.type != CoinType.iris &&
                widget.coinBalance.coin.type != CoinType.zhtlc)
              CustomFee(
                coin: widget.coinBalance.coin,
                amount: widget.amountController.text,
                scrollController: widget.scrollController,
                onChanged: onChanged,
              ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SecondaryButton(
                    text: AppLocalizations.of(context).cancel,
                    onPressed: () {
                      widget.amountController.clear();
                      widget.addressController.clear();
                      coinsDetailBloc.setIsCancel(true);
                      formKey.currentState.validate();
                      coinsDetailBloc.setIsCancel(false);
                      widget.onCancel();
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(child: _buildWithdrawButton(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void handlePaymentData(PaymentUriInfo uriInfo) {
    if (uriInfo == null) return;

    if (uriInfo.abbr != widget.coinBalance.coin.abbr) {
      showWrongCoinDialog(uriInfo);
      return;
    }

    if (widget.paymentUriInfo != null) {
      onConfirmCallback(uriInfo);
    } else {
      showUriDetailsDialog(context, uriInfo, onConfirmCallback);
    }
  }

  void onConfirmCallback(PaymentUriInfo uriInfo) {
    if (uriInfo.address != null && uriInfo.address.isNotEmpty) {
      widget.addressController.text = uriInfo.address;
    }
    if (uriInfo.amount != null) {
      final coinBalance = coinsBloc.coinBalance.firstWhere(
          (cb) => cb.coin.abbr == widget.coinBalance.coin.abbr,
          orElse: () => null);
      final amountDecimal = deci(uriInfo.amount);

      if (coinBalance != null && coinBalance.balance.balance >= amountDecimal) {
        widget.amountController.text = uriInfo.amount;
      } else {
        showinsufficientBalanceDialog(amountDecimal);
      }
    }
  }

  void handleQrAdress(String address) {
    widget.addressController.text = address;
  }

  set qrAmount(String amount) {
    widget.amountController.text = amount;
  }

  void showWrongCoinDialog(PaymentUriInfo uriInfo) {
    dialogBloc.dialog = showDialog<void>(
        context: context,
        builder: (context) {
          return CustomSimpleDialog(
            title: Text(AppLocalizations.of(context).wrongCoinTitle),
            children: <Widget>[
              Text(AppLocalizations.of(context).wrongCoinSpan1 +
                  uriInfo.abbr +
                  AppLocalizations.of(context).wrongCoinSpan2 +
                  widget.coinBalance.coin.abbr +
                  AppLocalizations.of(context).wrongCoinSpan3),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => dialogBloc.closeDialog(context),
                    child: Text(AppLocalizations.of(context).okButton),
                  )
                ],
              ),
            ],
          );
        }).then((dynamic _) => dialogBloc.dialog = null);
  }

  void showinsufficientBalanceDialog(Decimal amount) {
    dialogBloc.dialog = showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomSimpleDialog(
          title: Text(AppLocalizations.of(context).uriInsufficientBalanceTitle),
          children: <Widget>[
            Text(
              AppLocalizations.of(context).uriInsufficientBalanceSpan1 +
                  '${deci2s(amount)} ${widget.coinBalance.coin.abbr}' +
                  AppLocalizations.of(context).uriInsufficientBalanceSpan2,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context).warningOkBtn),
                )
              ],
            )
          ],
        );
      },
    ).then((dynamic _) => dialogBloc.dialog = null);
  }

  Widget _buildWithdrawButton(BuildContext context) {
    return Builder(
      builder: (BuildContext mContext) {
        return PrimaryButton(
          key: const Key('primary-button-withdraw'),
          text: AppLocalizations.of(context).withdraw.toUpperCase(),
          onPressed: () async {
            // Validate will return true if the form is valid, or false if
            // the form is invalid.
            setState(() {
              isWithdrawPressed = true;
              widget.amountController.text =
                  widget.amountController.text.replaceAll(',', '.');
            });
            if (formKey.currentState.validate() &&
                widget.addressController.text.isNotEmpty &&
                widget.amountController.text.isNotEmpty) {
              widget.onWithdrawPressed();
            }
          },
        );
      },
    );
  }

  onChanged(String a) {
    setState(() {
      if (isWithdrawPressed && a.isEmpty) {
        autovalidate = false;
        formKey.currentState.validate();
      } else if (isWithdrawPressed) {
        autovalidate = true;
      }
    });
  }

  Future<void> scan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool haveCameraAccess =
        !(await MMService.nativeC.invokeMethod<bool>('is_camera_denied'));
    final bool wasDeniedByUser = prefs.getBool('camera_denied_by_user') == true;
    if (!haveCameraAccess) {
      if (wasDeniedByUser) {
        _showCameraPermissionDialog();
        return;
      }
    } else {
      prefs.setBool('camera_denied_by_user', false);
    }

    final int lockCookie = lockService.enteringQrScanner();

    final result = await scanQr(context);
    if (result == null) {
      setState(() {
        barcode = 'Error';
      });
    } else {
      final String address = getAddressFromUri(result.trim());
      final String amount = getParameterValue(result.trim(), 'amount');
      final Uri uri = Uri.tryParse(result.trim());

      setState(() {
        final PaymentUriInfo uriInfo = PaymentUriInfo.fromUri(uri);
        if (uriInfo != null) {
          handlePaymentData(uriInfo);
        } else {
          handleQrAdress(address);
          qrAmount = amount ?? '';
        }
      });
    }

    lockService.qrScannerReturned(lockCookie);
  }

  void _showCameraPermissionDialog() {
    dialogBloc.dialog = showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomSimpleDialog(
          title: Text(AppLocalizations.of(context).withdrawCameraAccessTitle),
          children: [
            Text(
              AppLocalizations.of(context)
                  .withdrawCameraAccessText(appConfig.appName),
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context).okButton),
                ),
              ],
            ),
          ],
        );
      },
    ).then((dynamic _) => dialogBloc.dialog = null);
  }
}
