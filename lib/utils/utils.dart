import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';

import 'package:bip39/bip39.dart' as bip39;
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:local_auth/local_auth.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:rational/rational.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_config/app_config.dart';
import '../blocs/authenticate_bloc.dart';
import '../blocs/coins_bloc.dart';
import '../blocs/dialog_bloc.dart';
import '../blocs/main_bloc.dart';
import '../localizations.dart';
import '../model/coin.dart';
import '../model/coin_balance.dart';
import '../model/error_string.dart';
import '../model/recent_swaps.dart';
import '../model/wallet_security_settings_provider.dart';
import '../services/lock_service.dart';
import '../services/mm_service.dart';
import '../utils/encryption_tool.dart';
import '../utils/log.dart';
import '../widgets/cex_fiat_preview.dart';
import '../widgets/custom_simple_dialog.dart';
import '../widgets/qr_view.dart';

void copyToClipBoard(BuildContext context, String str) {
  ScaffoldMessengerState scaffoldMessenger;
  try {
    scaffoldMessenger = ScaffoldMessenger.maybeOf(context);
    assert(
      scaffoldMessenger != null,
      'No ScaffoldMessenger found when copying to clipboard',
    );
  } catch (_) {}

  if (scaffoldMessenger != null) {
    scaffoldMessenger.showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(AppLocalizations.of(context).clipboard),
    ));
  }
  Clipboard.setData(ClipboardData(text: str));
}

Future<void> shareText(String text) async {
  try {
    await Share.share(text);
  } catch (_) {
    Log('utils:shareText', '[ERROR] Error sharing text.');
  }
}

/// Convers a null, a string or a double into a Decimal.
Decimal deci(dynamic dv) {
  if (dv == null) return Decimal.fromInt(0);
  if (dv is int) return Decimal.fromInt(dv);
  if (dv is String)
    return dv.isEmpty
        ? Decimal.fromInt(0)
        : Decimal.parse(dv.replaceAll(',', '.'));
  if (dv is double) return Decimal.parse(dv.toStringAsFixed(16));
  if (dv is Rational) return Decimal.parse(dv.toDecimalString());
  if (dv is Decimal) return dv;
  throw Exception('Neither string nor double: $dv');
}

Rational tryParseRat(String text) {
  try {
    return Rational.parse(text);
  } catch (_) {
    return null;
  }
}

String getCoinIconPath(String abbr) {
  List<String> coinsWithoutIcons = [
    'AWR',
    'CFUN',
    'ENT',
    'EPC',
    'FENIX',
    'PLY',
    'WID',
  ];
  String ticker = getCoinTicker(abbr).toLowerCase();
  if (coinsWithoutIcons.contains(abbr)) ticker = 'adexbsc';

  return 'assets/coin-icons/$ticker.png';
}

String getCoinTicker(String abbr) {
  for (String suffix in appConfig.protocolSuffixes) {
    abbr = abbr.replaceAll('-$suffix', '').replaceAll('_$suffix', '');
  }
  return abbr;
}

String getCoinTickerRegex(String abbr) {
  final String suffixes = appConfig.protocolSuffixes.join('|');
  final RegExp regExp = RegExp('(_|-)($suffixes)');
  return abbr.replaceAll(regExp, '');
}

Rational deci2rat(Decimal decimal) {
  try {
    return Rational.parse(decimal.toString());
  } catch (_) {
    return null;
  }
}

Rational fract2rat(Map<String, dynamic> fract) {
  try {
    final rat = Rational(
      BigInt.from(double.parse(fract['numer'])),
      BigInt.from(double.parse(fract['denom'])),
    );
    return rat;
  } catch (e) {
    Log('utils', 'fract2rat: $e');
    return null;
  }
}

Map<String, dynamic> rat2fract(Rational rat) {
  try {
    return <String, dynamic>{
      'numer': rat.numerator.toString(),
      'denom': rat.denominator.toString(),
    };
  } catch (_) {
    return null;
  }
}

/// Precise but readable representation (no trailing zeroes).
String deci2s(Decimal dv, [int fractions = 8]) {
  if (dv.isInteger) return dv.toStringAsFixed(0); // Fast path.
  String sv = dv.toStringAsFixed(fractions);
  final dot = sv.indexOf('.');
  if (dot == -1) return sv;
  sv = sv.replaceFirst(RegExp(r'0+$'), '', dot);
  if (sv.length - 1 == dot) sv = sv.substring(0, dot);
  return sv;
}

/// Decode a small unsigned base62 number
int base62udec(String bv) {
  int uv = 0;
  for (int ch in bv.codeUnits) {
    final int v = ch >= 48 && ch <= 57
        ? ch - 48
        : ch >= 65 && ch <= 90
            ? ch - 65 + 10
            : ch >= 97 && ch <= 122
                ? ch - 97 + 36
                : throw Exception('!base62: $ch');
    uv = uv * 62 + v;
  }
  return uv;
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

void showMessage(BuildContext mContext, String error) {
  ScaffoldMessenger.of(mContext).showSnackBar(SnackBar(
    duration: const Duration(seconds: 3),
    backgroundColor: Theme.of(mContext).primaryColor,
    content: Text(
      error,
      style: Theme.of(mContext).textTheme.bodyText2,
    ),
  ));
}

void showErrorMessage(BuildContext mContext, String error) {
  ScaffoldMessenger.of(mContext).showSnackBar(SnackBar(
    duration: const Duration(seconds: 2),
    backgroundColor: Theme.of(mContext).errorColor,
    content: Text(
      error,
      style: Theme.of(mContext).textTheme.bodyText2,
    ),
  ));
}

bool _canCheckBiometrics;

Future<bool> get canCheckBiometrics async {
  final LocalAuthentication auth = LocalAuthentication();
  if (_canCheckBiometrics == null) {
    try {
      _canCheckBiometrics = await auth.canCheckBiometrics;
      Log.println('utils:276', 'canCheckBiometrics: $_canCheckBiometrics');
    } on PlatformException catch (ex) {
      Log.println('utils:278', 'canCheckBiometrics exception: $ex');
    }
  }
  return _canCheckBiometrics;
}

/// This function is used to bring up the biometric authentication prompt.
/// It is invoked from the widget tree builders, such as LockScreen's.
/// Widget tree builders would often invoke this function several times in a row
/// (due to poor BLoC optimization perhaps?), leading to a flickering prompt on iOS.
/// We use `_activeAuthenticateWithBiometrics` in order to ignore such double-invocations.
Future<bool> authenticateBiometrics(BuildContext context, PinStatus pinStatus,
    {bool authorize = false}) async {
  final walletSecuritySettingsProvider =
      context.read<WalletSecuritySettingsProvider>();
  if (mainBloc.isInBackground) {
    StreamSubscription listener;
    listener = mainBloc.outIsInBackground.listen((bool isInBackground) {
      listener.cancel();
      if (!isInBackground) authenticateBiometrics(context, pinStatus);
    });
    return false;
  }

  Log.println('utils:291', 'authenticateBiometrics');
  if (walletSecuritySettingsProvider.activateBioProtection || authorize) {
    final LocalAuthentication localAuth = LocalAuthentication();
    bool didAuthenticate = false;

    // Avoid flicker by ignoring duplicate invocations
    // while an existing authenticateWithBiometrics is still active.
    // AG: The duplicate invocation might also crash the app (observed on 2020-02-07, Android, debug).
    if (lockService.inBiometrics) return false;
    final int lockCookie = lockService.enteringBiometrics();

    try {
      didAuthenticate = await localAuth.authenticate(
          biometricOnly: true,
          stickyAuth: true,
          localizedReason: AppLocalizations.of(context).lockScreenAuth);
    } on PlatformException catch (e) {
      // AG, 2020-02-07, observed a race:
      // "ex: Can not perform this action after onSaveInstanceState" is thrown and unlocks `_activeAuthenticateWithBiometrics`;
      // a second `authenticateWithBiometrics` then leads to "ex: Authentication in progress" and crash.
      // Rewriting the biometrics support (cf. #668) might be one way to fix that.
      Log.println('utils:312', 'authenticateWithBiometrics ex: ' + e.message);
    }

    await pauseUntil(() => !mainBloc.isInBackground);

    lockService.biometricsReturned(lockCookie);

    if (didAuthenticate) {
      if (pinStatus == PinStatus.DISABLED_PIN) {
        walletSecuritySettingsProvider.activatePinProtection = false;
        Navigator.pop(context);
      }
      authBloc.showLock = false;
      if (pinStatus == PinStatus.NORMAL_PIN && !mmSe.running) {
        await authBloc.login(await EncryptionTool().read('passphrase'), null);
      }
    }
    return didAuthenticate;
  } else {
    return false;
  }
}

Future<void> showCantRemoveDefaultCoin(BuildContext mContext, Coin coin) async {
  return dialogBloc.dialog = showDialog<void>(
      context: mContext,
      builder: (BuildContext context) {
        return CustomSimpleDialog(
          title: Text(
            AppLocalizations.of(context).cantDeleteDefaultCoinTitle + coin.abbr,
          ),
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                      text: coin.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: AppLocalizations.of(context)
                          .cantDeleteDefaultCoinSpan),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                      AppLocalizations.of(context).cantDeleteDefaultCoinOk),
                ),
              ],
            ),
          ],
        );
      }).then((_) {
    dialogBloc.dialog = null;
  });
}

Future<void> showConfirmationRemoveCoin(
    BuildContext mContext, Coin coin) async {
  List<CoinBalance> irisTokens = [];
  if (coin.abbr == 'IRIS') {
    irisTokens = coinsBloc.coinBalance
        .where((e) => e.coin.abbr == 'ATOM-IBC_IRIS')
        .toList();
  }
  return dialogBloc.dialog = showDialog<void>(
      context: mContext,
      builder: (BuildContext context) {
        return CustomSimpleDialog(
          title: Text(AppLocalizations.of(context).deleteConfirm),
          children: <Widget>[
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: <TextSpan>[
                  TextSpan(text: AppLocalizations.of(context).deleteSpan1),
                  TextSpan(
                      text: coin.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(text: AppLocalizations.of(context).deleteSpan2),
                  if (irisTokens.isNotEmpty)
                    TextSpan(
                        text: irisTokens.map((e) => e.coin.name).join(', '),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontWeight: FontWeight.bold)),
                  if (irisTokens.isNotEmpty)
                    TextSpan(text: AppLocalizations.of(context).deleteSpan3),
                ])),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context).cancel),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  key: Key('confirm-disable'),
                  onPressed: () async {
                    try {
                      irisTokens.isEmpty
                          ? await coinsBloc.removeCoin(coin)
                          : await coinsBloc.removeIrisCoin(coin, irisTokens);
                    } on ErrorString catch (ex) {
                      showMessage(mContext, ex.error);
                    }
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).errorColor,
                  ),
                  child: Text(AppLocalizations.of(context).confirm),
                )
              ],
            ),
          ],
        );
      }).then((_) {
    dialogBloc.dialog = null;
  });
}

Future<void> launchURL(String url) async {
  Log.println('utils:388', url);
  if (await canLaunchUrl(Uri.parse(url))) {
    mainBloc.isUrlLaucherIsOpen = true;
    await launchUrl(Uri.parse(url));
    mainBloc.isUrlLaucherIsOpen = false;
  } else {
    throw 'Could not launch $url';
  }
}

Duration durationSum(List<Duration> list) {
  int ms = 0;
  for (int i = 0; i < list.length; i++) {
    ms += list[i]?.inMilliseconds ?? 0;
  }
  return Duration(milliseconds: ms);
}

/// Returns String of milliseconds ('555ms') if [duration] < 1s,
/// seconds ('55s') if < 1min,
/// minutes and seconds ('5m 5s') if < 1 hour,
/// and hours, minutes, and seconds ('25h 25m 25s') if > 1 hour
String durationFormat(Duration duration) {
  if (duration == null) return '-';

  final int hh = duration.inHours;
  final int mm = duration.inMinutes;
  final int ss = duration.inSeconds;
  final int ms = duration.inMilliseconds;

  if (ms < 1000) return '$ms' + AppLocalizations().milliseconds;

  String formatted = '';
  if (ss.remainder(60) > 0) {
    formatted = '${ss.remainder(60)}' + AppLocalizations().seconds;
  }
  if (mm > 0) {
    formatted =
        '${mm.remainder(60)}' + AppLocalizations().minutes + ' ' + formatted;
  }
  if (hh > 0) {
    formatted = '$hh' + AppLocalizations().hours + ' ' + formatted;
  }

  return formatted;
}

double mean(List<double> values) {
  if (values == null || values.isEmpty) return null;
  final double sum = values.reduce((sum, current) => sum + current);
  return sum / values.length;
}

double deviation(List<double> values) {
  final double average = mean(values);
  final List<double> squares = [];
  for (var i = 0; i < values.length; i++) {
    squares.add(pow(values[i] - average, 2));
  }
  final averageSquares = mean(squares);

  return sqrt(averageSquares);
}

Directory _applicationDocumentsDirectory;

void setDebugDocumentsDirectory(Directory directory) {
  if (!isInDebugMode) throw Exception('Not in debug');
  _applicationDocumentsDirectory = directory;
}

Future<Directory> get applicationDocumentsDirectory async {
  _applicationDocumentsDirectory ??= await getApplicationDocumentsDirectory();
  return _applicationDocumentsDirectory;
}

/// Cached synchronous access to the application directory.
/// Returns `null` if the application directory is not known yet.
Directory get applicationDocumentsDirectorySync =>
    _applicationDocumentsDirectory;

Future<void> sleepMs(int ms) async {
  await Future<void>.delayed(Duration(milliseconds: ms));
}

Future<void> pauseUntil(Function cond, {int maxMs}) async {
  maxMs ??= 10000;
  final int start = DateTime.now().millisecondsSinceEpoch;

  while ((!await cond()) &&
      DateTime.now().millisecondsSinceEpoch - start < maxMs) {
    await Future<dynamic>.delayed(Duration(milliseconds: 100));
  }
}

/// Decode a lowercase hex into an integer.
///
/// There's actually more than one way to decode a hex
/// (e.g. big-endian versus little-endian)
/// and most libraries have the decoding underspecified
/// hence the explicit decoding might be more easily reproducible and transparent.
int hex2int(String sv) {
  int iv = 0;
  for (int ix = 0; ix < sv.length; ++ix) {
    final ch = sv.codeUnitAt(ix);
    int cv;
    if (ch >= 0x30 && ch <= 0x39) {
      cv = ch - 0x30; // 0-9, http://ascii-table.com/
    } else if (ch >= 0x61 && ch <= 0x66) {
      cv = ch - 0x61 + 10; // a-f
    } else {
      throw Exception('Not a hex: $ch in $sv at $ix');
    }
    iv += cv << (ix * 4);
  }
  return iv;
}

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

bool isErcType(Coin coin) {
  final String protocolType = coin?.protocol?.type;
  return protocolType == 'ERC20' || protocolType == 'ETH';
}

bool isSlpParent(Coin coin) {
  final String protocolType = coin?.protocol?.type;
  return protocolType == 'BCH';
}

bool isSlpChild(Coin coin) {
  final String protocolType = coin?.protocol?.type;
  return protocolType == 'SLPTOKEN';
}

bool isSlp(Coin coin) {
  return isSlpParent(coin) || isSlpChild(coin);
}

bool hasParentPreInstalled(Coin coin) {
  final String protocolType = coin?.protocol?.type;
  return protocolType == 'SLPTOKEN' ||
      coin?.protocol?.protocolData?.platform == 'IRIS';
}

String humanDate(int epoch) {
  DateTime _dateTime;
  try {
    _dateTime = DateTime.fromMillisecondsSinceEpoch(epoch);
  } catch (e) {
    Log('utils:508', 'humanDate] $e');
  }

  if (_dateTime == null) return null;

  final DateTime _now = DateTime.now();
  final bool _isThisYear = _dateTime.year == _now.year;
  final bool _isThisMonth = _isThisYear && _dateTime.month == _now.month;
  final bool _isToday = _isThisMonth && _dateTime.day == _now.day;

  if (_isToday) return DateFormat('HH:mm').format(_dateTime);
  if (_isThisYear) return DateFormat('MMMM d, HH:mm').format(_dateTime);
  return DateFormat('MMMM d y, HH:mm').format(_dateTime);
}

String formatPrice(dynamic value, [int digits = 6, int fraction = 2]) {
  if (value == null) return null;

  if (value is String) value = double.parse(value);
  if (value is Decimal) value = double.parse(deci2s(value));
  if (value is Rational) value = value.toDouble();
  final String rounded = value.toStringAsFixed(fraction);
  if (rounded.length >= digits + 1) {
    return rounded;
  } else if (value > 0 && value <= 0.00000001) {
    return '0.00000001';
  } else if (value > 0 && value <= 0.000001) {
    return value.toStringAsFixed(8);
  } else {
    return value.toStringAsPrecision(digits);
  }
}

String cutTrailingZeros(String str) {
  if (str == null) return null;

  String loop(String input) {
    if (input.length == 1) return input;
    if (!(input.contains('.') || input.contains(','))) return input;

    if (input[input.length - 1] == '0' ||
        input[input.length - 1] == '.' ||
        input[input.length - 1] == ',') {
      input = input.substring(0, input.length - 1);
      return loop(input);
    } else {
      return input;
    }
  }

  return loop(str);
}

Widget truncateMiddle(String string, {TextStyle style}) {
  if (string.length < 6)
    return Text(
      string,
      style: style,
    );

  return Row(
    children: <Widget>[
      Flexible(
        child: Text(
          string.substring(0, string.length - 5),
          overflow: TextOverflow.ellipsis,
          style: style,
          textAlign: TextAlign.right,
        ),
      ),
      Text(
        string.substring(string.length - 5),
        style: style,
      )
    ],
  );
}

bool isInfinite(dynamic value) {
  if (value == null) return false;
  if (value == 0.0 || value == '0.0' || value == '0') return false;

  if (value is String) value = double.parse(value);
  if (value is Rational) value = value.toDouble();
  value = value.abs();

  if (value > double.maxFinite || 1 / value > double.maxFinite) return true;
  if (value < double.minPositive || 1 / value < double.minPositive) return true;

  return false;
}

void printWarning(String text) {
  print('\x1B[33m$text\x1B[0m');
}

void printError(String text) {
  print('\x1B[31m$text\x1B[0m');
}

void pinScreenOrientation(BuildContext context) {
  final double shortSide = min(
      MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
  if (shortSide < 768) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  } else {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}

class PaymentUriInfo {
  PaymentUriInfo({this.scheme, this.abbr, this.address, this.amount});

  factory PaymentUriInfo.fromUri(Uri uri) {
    String address;
    double amount;
    String abbr;

    if (uri.scheme == 'bitcoin') {
      abbr = 'BTC';
      if (uri != null) {
        if (uri.path != null && uri.pathSegments.isNotEmpty)
          address = uri.pathSegments[0];
        if (uri.queryParameters != null) {
          if (uri.queryParameters.containsKey('amount'))
            amount = double.tryParse(uri.queryParameters['amount']);
        }
      }
    } else if (uri.scheme == 'ethereum') {
      abbr = 'ETH';
      if (uri != null) {
        if (uri.path != null && uri.pathSegments.isNotEmpty)
          address = uri.pathSegments[0];
        if (uri.queryParameters != null) {
          if (uri.queryParameters.containsKey('value'))
            amount = double.tryParse(uri.queryParameters['value']);
          if (amount != null) amount = amount * pow(10, -18);
        }
      }
    } else {
      return null;
    }

    return PaymentUriInfo(
      scheme: uri.scheme,
      abbr: abbr,
      address: address,
      amount: amount?.toString(),
    );
  }

  final String scheme;
  final String abbr;
  final String address;
  final String amount;
}

/// Returns the value of a [parameter] from the [address].
/// Returns null if the [parameter] is not found.
/// [address] is expected to be a blockchain address or URL with parameters,
/// e.g. '?amount=123'
///
/// Example usage:
/// ```dart
/// getParameterValue('litecoin:NPZcaiggQTy6uxL?amount=0.2', 'amount') == '0.2'
/// ```
String getParameterValue(String address, String parameter) {
  final RegExp regExp = RegExp('(?<=$parameter=)(.*?)(?=&|\$)');
  final RegExpMatch match = regExp.firstMatch(address);
  return match?.group(0);
}

/// Returns the address from the [uri].
/// Returns the [uri] if no address is found.
/// [uri] is expected to be a blockchain address or URL with parameters,
/// e.g. '?amount=123'
/// Example usage:
/// ```dart
/// getAddressFromUri('litecoin:NPZcaiggQTy6uxL?amount=0.2') == 'NPZcaiggQTy6uxL'
/// ```
String getAddressFromUri(String uri) {
  final RegExp regExp = RegExp(r'(?<=:)(.*?)(?=\?|$)');
  final RegExpMatch match = regExp.firstMatch(uri);
  return match?.group(0) ?? uri.split(':').last;
}

void showUriDetailsDialog(
    BuildContext context, PaymentUriInfo uriInfo, Function callbackIfAccepted) {
  if (uriInfo == null) return;

  final String amount = cutTrailingZeros(formatPrice(uriInfo.amount));
  final String abbr = uriInfo.abbr;
  final String address = uriInfo.address;

  if (amount == null || abbr == null || address == null) return;

  final bool isActivated = coinsBloc.getBalanceByAbbr(abbr) != null;

  dialogBloc.dialog = showDialog<void>(
    context: context,
    builder: (context) {
      return CustomSimpleDialog(
        title: Text(
          AppLocalizations.of(context).paymentUriDetailsTitle,
          style: TextStyle(fontSize: 24),
        ),
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              Text(
                amount,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 11,
                    backgroundImage:
                        AssetImage(getCoinIconPath(abbr.toLowerCase())),
                  ),
                  SizedBox(width: 6),
                  Text(
                    abbr,
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CexFiatPreview(
                amount: amount,
                coinAbbr: abbr,
                textStyle: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).paymentUriDetailsAddressSpan +
                  ':'),
            ],
          ),
          SizedBox(height: 6),
          Text(address),
          SizedBox(height: 24),
          if (!isActivated) ...{
            Text(
              AppLocalizations.of(context).paymentUriInactiveCoin(abbr),
              style: TextStyle(color: Theme.of(context).errorColor),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context).okButton),
                )
              ],
            )
          } else ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child:
                      Text(AppLocalizations.of(context).paymentUriDetailsDeny),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    callbackIfAccepted();
                  },
                  child: Text(
                      AppLocalizations.of(context).paymentUriDetailsAccept),
                )
              ],
            )
          },
        ],
      );
    },
  ).then((dynamic _) => dialogBloc.dialog = null);
}

String getLocaleFullName(Locale loc) {
  if (loc.countryCode != null) return '${loc.languageCode}_${loc.countryCode}';
  return loc.languageCode;
}

String getRandomWord() {
  final String mnemonic = bip39.generateMnemonic();
  final List<String> words = mnemonic.split(' ');
  return words[Random().nextInt(words.length)];
}

void mustRunInMainThread({String message}) {
  final isMainThread = Isolate.current.debugName == 'main';
  if (!isMainThread) {
    throw Exception(
      message ?? 'Method must be called on the main thread',
    );
  }
}

void mustRunInIsolate([String message]) {
  final isMainThread = Isolate.current.debugName == 'main';
  if (isMainThread) {
    throw Exception(
      message ?? 'Method must be called in an isolate',
    );
  }
}

List<Coin> filterCoinsByQuery(List<Coin> coins, String query,
    {String type = ''}) {
  if (coins == null || coins.isEmpty) return [];
  List<Coin> list =
      coins.where((Coin coin) => isCoinPresent(coin, query, type)).toList();

  return list;
}

Future<String> scanQr(BuildContext context) async {
  unfocusEverything();
  await Future.delayed(const Duration(milliseconds: 200));
  return await Navigator.of(context).push<String>(
    MaterialPageRoute(builder: (context) => QRScan()),
  );
}

/// Function to generate password based on some criteria
///
/// Adapted from code at https://blog.albertobonacina.com/password-generator-with-dart.
/// Please review it very carefully!

String generatePassword(bool _isWithLetters, bool _isWithUppercase,
    bool _isWithNumbers, bool _isWithSpecial, int _numberCharPassword) {
  //Define the allowed chars to use in the password
  const String _lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';
  const String _upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String _numbers = '0123456789';
  const String _special = r'@#=+!$%?[](){}';

  //Create the empty string that will contain the allowed chars
  String _allowedChars = '';

  //Put chars on the allowed ones based on the input values
  _allowedChars += _isWithLetters ? _lowerCaseLetters : '';
  _allowedChars += _isWithUppercase ? _upperCaseLetters : '';
  _allowedChars += _isWithNumbers ? _numbers : '';
  _allowedChars += _isWithSpecial ? _special : '';

  int i = 0;
  String _result = '';

  //Create password
  while (i < _numberCharPassword) {
    //Get random int
    final int randomInt = Random.secure().nextInt(_allowedChars.length);
    //Get random char and append it to the password
    _result += _allowedChars[randomInt];
    i++;
  }

  return _result;
}

Map<String, String> extractMyInfoFromSwap(MmSwap swap) {
  String myCoin, myAmount, otherCoin, otherAmount;

  if (swap.myInfo != null) {
    myCoin = swap.myInfo.myCoin;
    myAmount = swap.myInfo.myAmount;
    otherCoin = swap.myInfo.otherCoin;
    otherAmount = swap.myInfo.otherAmount;
  } else {
    myCoin = swap.type == 'Maker' ? swap.makerCoin : swap.takerCoin;
    myAmount = swap.type == 'Maker' ? swap.makerAmount : swap.takerAmount;

    // Same as previous, just swapped around
    otherCoin = swap.type == 'Maker' ? swap.takerCoin : swap.makerCoin;
    otherAmount = swap.type == 'Maker' ? swap.takerAmount : swap.makerAmount;
  }

  return <String, String>{
    'myCoin': myCoin,
    'myAmount': myAmount,
    'otherCoin': otherCoin,
    'otherAmount': otherAmount,
  };
}

int extractStartedAtFromSwap(MmSwap swap) {
  final startEvent = swap.events.firstWhere(
      (ev) => ev.event.type == 'Started' || ev.event.type == 'StartFailed',
      orElse: () => null);
  if (startEvent != null) {
    // MRC: I believe, for now, it's easier to just divide the timestamp by 1000
    // rather than switching the logic on all uses of StartedAt
    return startEvent.event.data.startedAt != 0
        ? startEvent.event.data.startedAt
        : (startEvent.timestamp / 1000).floor();
  }
  return 0;
}

/// Unfocus whatever is currently focused, e.g. TextFields.
///
/// See https://stackoverflow.com/a/56946311 for more info.
void unfocusEverything() {
  FocusManager.instance.primaryFocus?.unfocus();
}

void moveCursorToEnd(TextEditingController controller) {
  controller.selection = TextSelection.fromPosition(
    TextPosition(offset: controller.text.length),
  );
}

String toInitialUpper(String val) {
  if (val == null || val.isEmpty) return '';
  final String initial = val.substring(0, 1);
  final String rest = val.substring(1);
  return initial.toUpperCase() + rest;
}

bool isCoinPresent(Coin coin, String query, String filter) {
  return coin.type.name.toLowerCase().contains(filter.toLowerCase()) &&
      (coin.abbr.toLowerCase().contains(query.trim().toLowerCase()) ||
          coin.name.toLowerCase().contains(query.trim().toLowerCase()));
}

String formatAddressShort(String address) {
  if (address == null) return null;
  if (address.length < 10) return address;
  return address.substring(0, 5) +
      '...' +
      address.substring(address.length - 5);
}

String flattenParagraphs(String text) {
  if (text == null) return null;
  return text.replaceAll('\n', ' ').replaceAll('\r', ' ').replaceAll('\t', ' ');
}
