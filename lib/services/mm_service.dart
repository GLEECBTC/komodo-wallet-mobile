import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart'
    show EventChannel, MethodChannel, rootBundle, SystemChannels;
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:komodo_dex/app_config/coins_updater.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../app_config/app_config.dart';
import '../blocs/coins_bloc.dart';
import '../blocs/orders_bloc.dart';
import '../model/balance.dart';
import '../model/base_service.dart';
import '../model/coin.dart';
import '../model/config_mm2.dart';
import '../model/get_balance.dart';
import '../model/swap_provider.dart';
import '../model/version_mm2.dart';
import '../services/job_service.dart';
import '../services/mm.dart';
import '../utils/encryption_tool.dart';
import '../utils/log.dart';
import '../utils/utils.dart';

/// Singleton shorthand for `MMService()`, Market Maker API.
MMService mmSe = MMService._internal();

/// Interface to Market Maker, https://developers.komodoplatform.com/
class MMService {
  factory MMService() => mmSe;
  MMService._internal();

  List<dynamic> balances = <dynamic>[];
  Process mm2Process;
  List<Coin> coins = <Coin>[];

  /// Represents wether mm2 has been started or not for this session even if
  /// it is not currently running.
  ///
  /// On iOS, the RPC server is killed when the app goes to background. This
  /// will remain true when the app is restored.
  ///
  /// Use [MM.isRpcUp()] to get the current status of the RPC server.
  ///
  /// Use [MM.untilRpcIsUp()] to efficiently await until RPC is up.
  bool get running => _running;
  bool _running = false;

  String url = 'http://localhost:${appConfig.rpcPort}';
  String userpass = '';
  Stream<List<int>> streamSubscriptionStdout;

  /// MM commit hash
  String mmVersion;

  // The date corresponding to the MM commit hash, YYYY-MM-DD
  String mmDate;

  /// Our name and version
  String gui;

  /// We're using the netid of 8762 as part of the bracking changes in MM2
  /// warrenting a new netid.
  int netid = 8762;

  /// Effective memory used by the application, MiB
  /// As of now it is specific to iOS
  int footprint;

  /// Resident set size of the application, MiB
  /// As of now it is specific to iOS
  int rs;

  /// Number of files used by the application (iOS)
  int files;

  /// Time when the metrics were last updated
  int metricsLM;

  /// Channel to native code.
  static MethodChannel nativeC =
      MethodChannel(Platform.isAndroid ? 'com.gleec.gleecdex/nativeC' : 'mm2');

  /// Log entries streamed from native code.
  /// MM log is coming that way on iOS.
  static const EventChannel logC = EventChannel('AtomicDEX/logC');
  Client client = http.Client();

  Future<void> _trafficMetrics() async {
    dynamic metrics = await MM.getMetricsMM2(BaseService(method: 'metrics'));
    // I/flutter (23292): metrics: {metrics: [{key: tx.history.request.count, labels: {client: electrum, coin: DEX, method: blockchain.scripthash.get_history}, type: counter, value: 1}, {key: rpc_client.response.count, labels: {client: electrum, coin: RICK}, type: counter, value: 13}, {key: tx.history.response.total_length, labels: {client: electrum, coin: KMD, method: blockchain.scripthash.get_history}, type: counter, value: 290}, {key: tx.history.request.count, labels: {client: electrum, coin: KMD, method: blockchain.scripthash.get_history}, type: counter, value: 1}, {key: rpc_client.request.count, labels: {client: electrum, coin: DEX}, type: counter, value: 14}, {key: tx.history.response.total_length, labels: {client: electrum, coin: RICK, method: blockchain.scripthash.get_history}, type: counter, value: 177}, {key: rpc_client.request.count, labels: {client: electrum, coin: BTC}, type: counter, value: 14}, {key: rpc_client.response.count, labels: {client: electrum, coin: BTC}, type: counter, value: 13}, {key: tx.history.response.c

    if (metrics is! Map<String, dynamic>) return;
    metrics = metrics['metrics'];
    if (metrics is! List<dynamic>) return;

    final Map<String, int> traffic = {};
    for (var item in metrics) {
      if (item is! Map<String, dynamic>) continue;
      if (item['key'] is! String) continue;
      if (item['value'] is! int) continue;
      final String key = item['key'];
      final int value = item['value'];
      if (key == 'rpc_client.traffic.in' ||
          key == 'rpc_client.traffic.out' ||
          key == 'tx.history.response.total_length') {
        traffic[key] = (traffic[key] ?? 0) + value;
      } else {
        // Uncomment to see what other metrics keys we have from MM:
        //Log('mm_service:123', 'metrics key ' + item['key']);
      }
    }
    Log('mm_service:126', 'MM traffic: $traffic');
    // ^^ The idea here is to send the traffic to a decentralized database for further analysis
    // (but we don't have one yet)
  }

  /// Setup and maintain the measurement of application metrics: network traffic, CPU usage, etc.
  void metrics() {
    jobService.install('metrics', 31.4, (j) async {
      try {
        if (mmSe.running) await _trafficMetrics();
      } catch (ex, trace) {
        Log.println('mm_service:137', '_trafficMetrics error: $ex, $trace');
      }
      // Not implemented on Android YET.
      if (Platform.isIOS) {
        final js = await nativeC.invokeMethod<String>('metrics');
        //Log('mm_service:142', 'metrics: $js');
        final Map<String, dynamic> mjs = json.decode(js);
        footprint = mjs['footprint'];
        rs = mjs['rs'];
        files = mjs['files'];
        metricsLM = DateTime.now().millisecondsSinceEpoch;
        if (files > 200) {
          Log('mm_service:149',
              'Warning, a large number of opened files, $files/256: $js');
        }
      }
    });
  }

  Future<void> init(String passphrase) async {
    final String rpcPass = _createRpcPass();
    await mmSe.runBin(rpcPass);
    metrics();

    jobService.install('updateOrdersAndSwaps', 3.14, (j) async {
      if (!mmSe.running) return;
      await updateOrdersAndSwaps();
    });

    jobService.install('updateMm2VersionInfo', 3.14, (j) async {
      if (!mmSe.running) return;
      if (mmVersion == null && mmDate == null && await MM.pingMm2()) {
        await initializeMmVersion();
      }
    });
  }

  String _createRpcPass() {
    // MRC: Instead of the previous algortihm (uuid -> base64 -> substring, etc.)
    // It was decided to use just a password generator.

    const int numAttempts = 10;

    String pass = '';
    for (var i = 0; i < numAttempts; i++) {
      pass = generatePassword(true, true, true, true, 32);

      if (_validateRpcPassword(pass)) {
        Log(
            'mm_service] initUsername',
            'Number of tries that were needed for generating a password that'
                'matches the current criteria: ${i + 1}.');
        break;
      }
    }

    if (!_validateRpcPassword(pass)) {
      Log(
          'mm_service] initUsername',
          "Couldn't generate valid rpcPassword in $numAttempts attempts."
              'Please report this problem!');
    }

    return pass;
  }

  // MRC: Since the app now uses an actual password generator for rpcPassword,
  // then this method is not as useful anymore.
  // However, it can still be useful if the criteria changes in the future, either by
  // being updated to be used to validate the new algorithm or as an archive of
  // the old criteria.
  //
  // Current criteria explained in comments.
  bool _validateRpcPassword(String src) {
    if (src == null || src.isEmpty) return false;

    // Password can't contain word 'password'
    if (src.toLowerCase().contains('password')) return false;

    // Password must contain one digit, one lowercase letter, one uppercase letter,
    // one special character and its length must be between 8 and 32 characters
    final RegExp exp = RegExp(
        r'^(?:(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9])).{8,32}$');
    if (!src.contains(exp)) return false;

    // Password can't contain same character three time in a row,
    // so some code below to check that:

    // MRC: Divide the password into all possible 3 character blocks
    final pieces = <String>[];
    for (int start = 0, end = 3; end <= src.length; start += 1, end += 1) {
      pieces.add(src.substring(start, end));
    }

    // If, for any block, all 3 character are the same, block doesn't fit criteria
    for (String p in pieces) {
      final src = p[0];
      int count = 1;
      if (p[1] == src) count += 1;
      if (p[2] == src) count += 1;

      if (count == 3) return false;
    }

    return true;
  }

  String get filesPath => applicationDocumentsDirectorySync == null
      ? null
      : applicationDocumentsDirectorySync.path + '/';

  /// Checks the size of a directory. Intended to be run in an isolate to avoid
  /// blocking the UI thread.
  ///
  /// NB! Don't use in main thread, it will lock the UI.
  static Future<double> _getDirectorySizeIsolate(
      Map<String, String> params) async {
    assert(
      ['dirPath', 'endsWith'].every((key) => params.containsKey(key)),
      'params must contain keys: dirPath, endsWith',
    );

    mustRunInIsolate();

    final dirPath = params['dirPath'] as String;
    final endsWith = params['endsWith'] as String;

    final dir = Directory(dirPath);

    double convertBytesToOutputUnitsMB(int bytes) => bytes / pow(1024, 2);

    if (!dir.existsSync()) return 0;

    // NB: Doesn't ignore file links
    final hasFileNameFilter = endsWith != null && endsWith.isNotEmpty;

    final dirStats = dir.statSync();

    final files = dir
        .listSync(recursive: true, followLinks: false)
        .whereType<File>()
        .where(
            (file) => hasFileNameFilter ? file.path.endsWith(endsWith) : true)
        .toList();

    final sizeBytes =
        files.fold<int>(0, (prev, file) => prev + file.lengthSync());

    return convertBytesToOutputUnitsMB(sizeBytes);
  }

  /// Gets the size of a directory or file. If the directory is a folder, the
  /// size of all files in the folder (fully recursive) will be added together.
  /// If the directory is a file, the size of the file will be returned.
  ///
  /// Specify [endsWith] to only include files ending with this string in the
  /// size calculation. Otherwise all files will be included.
  ///
  /// Similar to [dirStatSync], but runs in an isolate to avoid blocking the
  /// UI thread.
  static Future<double> getDirectorySize(
    String dirPath, {
    /// If not null and not empty, only files ending with this string will be
    /// included in the size calculation.
    ///
    /// Otherwise all files will be included.
    String endsWith,
    bool allowCache = true,
  }) async {
    final dirSizeMB = await compute(_getDirectorySizeIsolate, <String, String>{
      'dirPath': dirPath,
      'endsWith': endsWith,
    });

    return dirSizeMB;
  }

  // TODO: Cache the directory size lookups to avoid unnecessary file system
  // lookups. Check if the cached value is still valid by checking the recursive
  // directory size and/or the last modified date of the directory.
  static Map<String, double> _directorySizeCache = <String, double>{};

  static _getCachedDirectorySize(String dirPath, {String endsWith}) {
    final isCached = _directorySizeCache.containsKey('$dirPath**$endsWith');
    if (isCached) return _directorySizeCache['$dirPath**$endsWith'];
  }

  static _storeCachedDirectorySize(String dirPath,
      {String endsWith, @required double size}) {
    _directorySizeCache['$dirPath**$endsWith'] = size;
  }

  /// returns directory size in MB
  static double dirStatSync(String dirPath, {String endsWith = 'log'}) {
    int totalSize = 0;
    var dir = Directory(dirPath);
    try {
      if (dir.existsSync()) {
        dir
            .listSync(recursive: true, followLinks: false)
            .where((element) => element.path.endsWith(endsWith))
            .forEach((FileSystemEntity entity) {
          if (entity is File) {
            totalSize += entity.lengthSync();
          }
        });
      }
    } catch (e) {
      print(e.toString());
    }
    return totalSize / 1000000;
  }

  // static Future<double> dirStatAsync(Map<String,dynamic> params){
  //  TODO: Asnc method that runs in isolate
  // }

  Future<void> runBin(String rpcPass) async {
    final String passphrase = await EncryptionTool().read('passphrase');
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String os = Platform.isAndroid ? 'Android' : 'iOS';
    gui = 'Gleec Wallet ${packageInfo.version} $os';
    if (Platform.isAndroid) {
      final buildTime = await nativeC.invokeMethod<int>('BUILD_TIME');
      gui += '; BT=${buildTime ~/ 1000}';
    }

    final String startParam = configMm2ToJson(ConfigMm2(
      gui: gui,
      netid: netid,
      client: 1,
      userhome: filesPath,
      passphrase: passphrase,
      rpcPassword: rpcPass,
      coins: await readJsonCoinInit(),
      dbdir: filesPath,
      allowWeakPassword: false,
      rpcPort: appConfig.rpcPort,
    ));

    logC
        .receiveBroadcastStream()
        .listen(_onNativeLog, onError: _onNativeLogError);

    try {
      final int errorCode = await nativeC.invokeMethod<dynamic>(
          'start', <String, String>{'params': startParam}); //start mm2
      final Mm2Error error = mm2ErrorFrom(errorCode);
      if (error != Mm2Error.ok) {
        if (error == Mm2Error.already_runs) {
          Log('mm_service', '$error, restarting mm2');
          await stopmm2();
          await runBin(rpcPass);
        } else {
          throw Exception('Error on start mm2: $error');
        }
      }

      // check when mm2 is ready then load coins
      final int timerTmp = DateTime.now().millisecondsSinceEpoch;
      Timer.periodic(const Duration(seconds: 2), (timer) {
        final int t1 = timerTmp + 20000;
        final int t2 = DateTime.now().millisecondsSinceEpoch;
        if (t1 <= t2) {
          timer.cancel();
        }

        checkStatusMm2().then((int onValue) {
          final status = mm2StatusFrom(onValue);
          Log('mm_service:313', 'mm2_main_status: $status');
          if (status == Mm2Status.ready) {
            userpass = rpcPass;
            _running = true;
            timer.cancel();
            initCoinsAndLoad();
            coinsBloc.startCheckBalance();
          }
        });
      });
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> initializeMmVersion() async {
    final VersionMm2 versionmm2 =
        await MM.getVersionMM2(BaseService(method: 'version'));
    if (versionmm2 is VersionMm2 && versionmm2 != null) {
      mmVersion = versionmm2.result;
      mmDate = versionmm2.datetime;
      Log('mm_service:305]', 'mm2 version info updated');

      jobService.suspend('updateMm2VersionInfo');
    }
  }

  /// Load fresh lists of orders and swaps from MM.
  Future<void> updateOrdersAndSwaps() async {
    await swapMonitor.update();
    await ordersBloc.updateOrdersSwaps();
  }

  /// Process a line of MM log.
  void _onLog(String chunk) {
    Log('mm_service:338', chunk);
  }

  void _onNativeLog(Object event) {
    _onLog(event);
  }

  void _onNativeLogError(Object error) {
    Log('mm_service:415', error);
  }

  Future<List<dynamic>> readJsonCoinInit() async {
    List<dynamic> coinsJson;

    try {
      coinsJson = await jsonDecode(await CoinUpdater().getCoins());

      coinsJson = coinsJson.map((dynamic coinDynamic) {
        try {
          if (coinDynamic is Map<String, dynamic>) {
            coinDynamic = coinModifier(coinDynamic);
          }
        } catch (e) {
          // Coin modification failed. This is not a critical error, so we can,
          // but developers should be aware of it.
          Log('mm_service', 'Coin modification failed. ${e.toString()}');
        }
        return coinDynamic;
      }).toList();
    } catch (e) {
      Log('mm_service', 'Error loading coin config: ${e.toString()}');

      return [];
    }

    return coinsJson;
  }

  /// A function to modify each loaded coin in the list of coins before it is
  /// passed to MM.
  Map<String, dynamic> coinModifier(Map<String, dynamic> coin) {
    // Remove the check_point_block from ZHTLC coins because this is required
    // if we want to activate ZHTLC coins and only sync from the current date.
    // The check_point_block will be removed from the coin config repo in the
    // future, so this is a temporary workaround.
    if (coin.containsKey('protocol') &&
        coin['protocol'].containsKey('type') &&
        coin['protocol']['type'] == 'ZHTLC' &&
        coin['protocol']['protocol_data'].containsKey('check_point_block')) {
      coin['protocol']['protocol_data'].remove('check_point_block');
    }
    return coin;
  }

  Future<void> initCoinsAndLoad() async {
    try {
      await coinsBloc.activateCoinKickStart();
      final active = await coinsBloc.electrumCoins();

      await coinsBloc.enableCoins(active, initialization: true);

      for (int i = 0; i < 2; i++) {
        await coinsBloc.retryActivatingSuspendedCoins();
      }

      Log('mm_service]', 'All coins activated');
      await coinsBloc.updateCoinBalances();
      Log('mm_service]', 'loadCoin finished');
    } catch (e) {
      Log('mm_service]', 'initCoinsAndLoad error: $e');
    }
  }

  Future<int> checkStatusMm2() async {
    return await nativeC.invokeMethod('status');
  }

  Future<void> lsof() async {
    if (!Platform.isIOS) return; // Only implemented on iOS.
    final rc = await nativeC.invokeMethod<int>('lsof');
    if (rc != 0) throw Exception('!lsof: $rc');
  }

  Future<File> get _localFile async {
    return File('${filesPath}mm2');
  }

  Future<File> saveMmBin(List<int> data) async {
    final File file = await _localFile;
    return file.writeAsBytes(data);
  }

  Future<void> deleteMmBin() async {
    final File file = await _localFile;
    await file.delete();
  }

  Future<void> stopmm2() async {
    if (await _mm2status() == Mm2Status.not_running) {
      _running = false;
      Log('mm_service', 'mm2 is not running, return');
      return;
    }
    final int errorCode = await nativeC.invokeMethod<int>('stop');
    final Mm2StopError error = mm2StopErrorFrom(errorCode);
    Log('mm_service', 'stopmm2: $error');

    await pauseUntil(() async => await _mm2status() == Mm2Status.not_running);
    _running = false;
  }

  Future<Mm2Status> _mm2status() async {
    return mm2StatusFrom(await checkStatusMm2());
  }

  /// Handles the initialisation of MM2 and the app state if the app was
  /// suspended and then resumed.
  ///
  /// Returns a [bool] with the result of whether a wake-up was performed.
  /// Typically this is only necessary on iOS.
  FutureOr<bool> wakeUpSuspendedApi() async {
    if (!Platform.isIOS || !running) return false;

    /// Wait until mm2 is up, in case it was restarted from Swift
    await MM.untilRpcIsUp();

    /// If [running], but enabled coins list is empty,
    /// it means that mm2 was restarted from Swift, and we
    /// should reenable active coins ones again
    if (await hasCoinsLoaded()) return false;

    await initCoinsAndLoad().catchError((e) {
      Log('MMService:handleWakeUp',
          'Failed to init coins and load. ${e.toString()}');
    });

    return true;
  }

  Future<bool> hasCoinsLoaded() async =>
      (await MM.getEnabledCoins()).isNotEmpty;

  Future<List<Balance>> getAllBalances(bool forceUpdate) async {
    Log('mm_service', 'getAllBalances');
    final List<Coin> coins = await coinsBloc.electrumCoins();

    if (balances.isEmpty || forceUpdate || coins.length != balances.length) {
      final List<Future<Balance>> futureBalances = <Future<Balance>>[];

      for (Coin coin in coins) {
        futureBalances.add(MM.getBalance(GetBalance(coin: coin.abbr)));
      }
      return await Future.wait<Balance>(futureBalances);
    } else {
      return [];
    }
  }
}

class FileAndSink {
  FileAndSink(this.file, this.sink);
  File file;
  IOSink sink;
}

/// mm2_main error codes defined in "mm2_lib.rs".
enum Mm2Error {
  ok,
  already_runs,
  conf_is_null,
  conf_not_utf8,
  cant_thread,
  unknown,
}

/// mm2_stop error codes defined in "mm2_lib.rs".
enum Mm2StopError {
  ok,
  not_running,
  error_stopping,
  unknown,
}

/// mm2_main_status codes defined in "mm2_lib.rs".
enum Mm2Status {
  not_running,
  no_context,
  no_rpc,
  ready,
  unknown,
}

Mm2Error mm2ErrorFrom(int errorCode) {
  switch (errorCode) {
    case 0:
      return Mm2Error.ok;
    case 1:
      return Mm2Error.already_runs;
    case 2:
      return Mm2Error.conf_is_null;
    case 3:
      return Mm2Error.conf_not_utf8;
    case 5:
      return Mm2Error.cant_thread;
    default:
      return Mm2Error.unknown;
  }
}

Mm2StopError mm2StopErrorFrom(int errorCode) {
  switch (errorCode) {
    case 0:
      return Mm2StopError.ok;
    case 1:
      return Mm2StopError.not_running;
    case 2:
      return Mm2StopError.error_stopping;
  }
  return Mm2StopError.unknown;
}

Mm2Status mm2StatusFrom(int statusCode) {
  switch (statusCode) {
    case 0:
      return Mm2Status.not_running;
    case 1:
      return Mm2Status.no_context;
    case 2:
      return Mm2Status.no_rpc;
    case 3:
      return Mm2Status.ready;
    default:
      return Mm2Status.unknown;
  }
}
