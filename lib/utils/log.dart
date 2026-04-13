import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';
import 'package:komodo_dex/blocs/main_bloc.dart';
import 'package:komodo_dex/model/swap_provider.dart';
import 'package:komodo_dex/utils/log_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';

import '../services/mm_service.dart';
import '../utils/utils.dart';

class Log {
  /// Log the [message].
  /// The [key] points at the code line location
  /// (updated automatically with https://github.com/ArtemGr/log-loc-rs).
  factory Log(String key, dynamic message) {
    Log.println(key, message);
    return _instance;
  }
  Log._();
  static final _instance = Log._();

  static Future<void> init() async {
    await LogStorage.init();
  }

  static final LogStorage _logStorage = LogStorage();

  /// This function can be used in a hot-reload debugging session to focus on certain sections of the log.
  static bool pass(String key, dynamic message) {
    //return message.toString().startsWith('pickMode]') || message.toString().startsWith('play]');
    //return key.startsWith('swap_provider:');
    return kDebugMode;
  }

  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static String twoDigits(int n) => n >= 10 ? '$n' : '0$n';

  /// Log the [message].
  /// The [key] points at the code line location
  /// (updated automatically with https://github.com/ArtemGr/log-loc-rs).

  static void println(String key, dynamic message) {
    String messageToPrint = '';
    if (key.isNotEmpty) {
      messageToPrint = '$key] $message';
    } else {
      messageToPrint = message.toString();
    }

    if (pass(key, message)) {
      print(messageToPrint);
    }

    final now = DateTime.now();
    final dateString = DateFormat('HH:mm:ss.SSS').format(DateTime.now());
    _logStorage.appendLog(now, '$dateString $messageToPrint');
  }

  static Future<void> appendRawLog(String message) async {
    final now = DateTime.now();
    _logStorage.appendLog(now, message);
  }

  static double limitMB = 500;

  // Retrieve the last cleared date from secure storage, return null if
  // never cleared before.
  static Future<DateTime> getLastClearedDate() async {
    final storedVal = await _secureStorage.read(key: 'lastClearedDate');
    if (storedVal?.isEmpty ?? true) return null;
    return DateTime.tryParse(storedVal);
  }

  static Future<void> _updateLastClearedDate() async {
    final lastClearedDate = DateTime.now();
    await _secureStorage.write(
      key: 'lastClearedDate',
      value: lastClearedDate.toIso8601String(),
    );
  }

  /// Loop through saved log files from latest to older, and delete
  /// all files above overall [limitMB] size, except the today's one
  static Future<void> maintain() async {
    final directory = await applicationDocumentsDirectory;

    DateTime lastClearedDate = await getLastClearedDate();

    final List<File> logs = (await _logStorage.getLogFiles()).values.toList()

      // Sorted
      ..sort((File a, File b) => b.path.compareTo(a.path));

    final now = DateTime.now();
    final difference =
        lastClearedDate == null ? null : now.difference(lastClearedDate).inDays;

    // Use compute function to run maintainInSeparateIsolate in a separate isolate.
    Map<String, dynamic> params = {
      'logs': logs,
      'limitMB': limitMB,
      'difference': difference,
      'directoryPath': directory.path,
    };

    await compute(_doMaintainInSeparateIsolate, params);

    await _updateLastClearedDate();
  }

  static Future<void> downloadLogs() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String os = Platform.operatingSystem;

    final now = DateTime.now();

    try {
      if (swapMonitor.swaps.isEmpty) await swapMonitor.update();

      await Log.appendRawLog('\n\n--- my recent swaps ---\n\n');

      final recentSwaps = swapMonitor.swaps.where((swap) =>
          swap.started != null &&
          DateTime.fromMillisecondsSinceEpoch(swap.started.timestamp)
                  .difference(now)
                  .inDays
                  .abs() <
              7);

      for (final swap in recentSwaps) {
        await Log.appendRawLog('${swap.toJson}\n');
      }

      await Log.appendRawLog('\n\n--- / my recent swaps ---\n\n');
      // TBD: Replace these with a pretty-printed metrics JSON
      await Log.appendRawLog('Gleec Wallet ${packageInfo.version} $os\n');
      await Log.appendRawLog(
          'mm_version ${mmSe.mmVersion} mm_date ${mmSe.mmDate}\n');
      await Log.appendRawLog('netid ${mmSe.netid}\n');
    } catch (ex) {
      Log('setting_page:723', ex);
      await Log.appendRawLog('Error saving swaps for log export: $ex');
    }

    // Discord attachment size limit is about 25 MiB
    final exportedLogFiles =
        (await LogStorage().exportLogs()).map((f) => XFile(f.path)).toList();
    if (exportedLogFiles.isEmpty) {
      throw Exception('No logs to download');
    }

    mainBloc.isUrlLaucherIsOpen = true;

    await Share.shareXFiles(
      exportedLogFiles,
      // mimeTypes: ['application/octet-stream'],
      subject: 'Gleec Wallet Logs at ${DateTime.now().toIso8601String()}',
    );
  }
}

Future<void> _doMaintainInSeparateIsolate(Map<String, dynamic> params) async {
  mustRunInIsolate();

  List<File> logs = params['logs'] as List<File>;
  double limitMB = params['limitMB'] as double;
  final directoryPath = params['directoryPath'] as String;

  double totalSize = logs.fold(
    0,
    (sum, f) => sum + f.lengthSync() / pow(1000, 2),
  );

  print('Log size: ${totalSize.toStringAsFixed(2)}MB for ${logs.length} files');

  // Clear logs if never cleared before
  final shouldClearAllLogFiles = params['difference'] == null;

  if (shouldClearAllLogFiles) {
    final List<Future<void>> futures = logs.map((f) => f.delete()).toList();

    return Future.wait(futures).catchError((e) {
      print('Error clearing all log files: $e');
    });
  }

  while (totalSize > limitMB) {
    try {
      if (logs.first.existsSync()) logs.first.deleteSync();
      totalSize =
          await MMService.getDirectorySize(directoryPath, endsWith: 'log');
      logs.removeAt(0);
    } catch (e) {
      print('Error deleting log files: $e');
    }
  }
}
