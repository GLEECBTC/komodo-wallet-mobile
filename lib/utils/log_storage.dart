import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:komodo_dex/utils/log.dart';
import 'package:komodo_dex/utils/utils.dart';
import 'package:path/path.dart' as p;

class LogStorage {
  LogStorage._();

  factory LogStorage() => _instance;

  final dateFormat = DateFormat('yyyy-MM-dd');
  IOSink _logFileSink;
  File _currentFile;

  static final _instance = LogStorage._();

  static Future<void> init() async {
    if (_logFolderPath?.isEmpty ?? true) {
      await applicationDocumentsDirectory;

      _logFolderPath = logFolderPath();
    }
  }

  static String _logFolderPath;

  static String logFolderPath() {
    if (_logFolderPath != null) return _logFolderPath;

    if (applicationDocumentsDirectorySync == null) {
      throw Exception(
        'Application documents directory is null. '
        'It must be initialized before calling logFolderPath()',
      );
    }

    _logFolderPath = applicationDocumentsDirectorySync.path;

    // Ideally we would put the logs in their own `/logs` folder, but this is
    // left as is for now for backwards compatibility. There likely won't be any
    // backwards compatibility issues, but there may be if there are any parts
    // of the app that rely on the logs being in original location.
    //
    // NB: If/when we move the log folder, bear in mind the edge-case where a
    // user has an old version of the app (pre 0.6.4 vuln fix) and updates to a
    // new version with a new log folder. We need to make sure that the old logs
    // are also cleared when [_doMaintainInSeparateIsolate] is called with
    // shouldClearAllLogFiles == true.
    return _logFolderPath;
  }

  /// Returns a map of log files, keyed by the date.
  Future<LinkedHashMap<DateTime, File>> getLogFiles() async {
    try {
      return await compute(_getLogsInIsolate, {
        'logFolderPath': logFolderPath(),
      });
    } catch (e) {
      Log('LogStorage: getLogFiles', 'Failed to get log files: $e');
      rethrow;
    }
  }

  static Future<LinkedHashMap<DateTime, File>> _getLogsInIsolate(
    Map<String, dynamic> params,
  ) async {
    mustRunInIsolate();

    final logPath = params['logFolderPath'] as String;

    final logDirectory = Directory(logPath);

    final logFilesMap = <DateTime, File>{} as LinkedHashMap<DateTime, File>;

    if (!logDirectory.existsSync()) {
      return logFilesMap;
    }

    final logFiles = logDirectory
        .listSync(followLinks: false, recursive: true)
        .whereType<File>()
        .where((f) => f.path.endsWith('.log'))
        .toList();

    for (final logFile in logFiles) {
      final date = DateTime.tryParse(
        p.basenameWithoutExtension(logFile.path),
      );

      if (date != null) {
        logFilesMap.addAll({date: logFile});
      } else {
        final errorString = 'Error parsing log file date: ${logFile.path}';
        throw Exception(errorString);
      }
    }

    return logFilesMap;
  }

  /// Returns the path to the log file for the given date. Does not create the
  /// file or guarantee that it exists.
  String getLogFilePath(DateTime date) {
    var filename = dateFormat.format(date) + '.log';
    return '${logFolderPath()}/$filename';
  }

  Future<File> getLogFile(DateTime date) async {
    return File(getLogFilePath(date));
  }

// Function to append string to log file
  Future<void> appendLog(DateTime date, String text) async {
    if (text == null || date == null) return;

    if (!text.endsWith('\n')) text += '\n';

    final file = await getLogFile(date);

    if (_currentFile?.path != file.path) {
      if (_logFileSink != null) {
        await closeLogFile();
      }

      _currentFile =
          !file.existsSync() ? await file.create(recursive: true) : file;

      _logFileSink = file.openWrite(mode: FileMode.append);
    }

    _logFileSink.write(text);
  }

  Future<void> closeLogFile() async {
    if (_logFileSink == null || !(_currentFile?.existsSync() ?? false)) return;

    await _logFileSink?.flush();
    await _logFileSink?.close();
    _logFileSink = null;
    _currentFile = null;
  }

  /// Return a list of log files that are in any previously used log folders
  Future<List<File>> orphanedLogFiles() async {
    throw UnimplementedError();
  }

  // Export all logs to a g.zip file, split up into 24MB files.
  Future<List<File>> exportLogs() async {
    await deleteExportedArchives();

    final logFiles = await getLogFiles();

    final compressedFiles = <File>[];
    final compressedSizes = <int>[];

    Archive archive = Archive();
    const compressionLevel = Deflate.DEFAULT_COMPRESSION;
    const maxSizeBytes = 24 * 1000 * 1000; // 24MB. Discord limit is 25MB.

    for (final logFile in logFiles.values) {
      List<int> fileBytes = logFile.readAsBytesSync();
      final fileName = p.basename(logFile.path);

      final logArchive = ArchiveFile(fileName, fileBytes.length, fileBytes);

      archive.addFile(logArchive);

      final compressedBytes =
          GZipEncoder().encode(fileBytes, level: compressionLevel);

      if (compressedBytes.length > maxSizeBytes) {
        throw Exception('Log file ${logFile.path} is larger than 24MB');
      }

      // If archive size of the current + next file is > 24MB, export the
      // current archive and start a new one.
      final wouldBeOverLimit = compressedSizes.fold<int>(0, (a, b) => a + b) +
              compressedBytes.length >
          maxSizeBytes;

      compressedSizes.add(compressedBytes.length);

      final isLastFile = logFile == logFiles.values.last;

      if (wouldBeOverLimit || isLastFile) {
        final archiveFile = File(
          '${logFolderPath()}/gleec_wallet_logs_archive_${compressedFiles.length}.gz',
        );

        final archiveBytes =
            ZipEncoder().encode(archive, level: compressionLevel);
        final gzipBytes =
            GZipEncoder().encode(archiveBytes, level: compressionLevel);

        final savedFile =
            await archiveFile.writeAsBytes(gzipBytes, flush: true);

        compressedFiles.add(savedFile);

        archive = Archive();
      }
    }
    return compressedFiles;
  }

  Future<void> deleteExportedArchives() async {
    final archives = Directory(logFolderPath())
        .listSync(followLinks: false, recursive: true)
        .whereType<File>()
        .where((f) => f.path.endsWith('.gz'))
        .toList();

    for (var archive in archives) {
      await archive.delete();
    }
  }
}

typedef LoggerFunction = void Function(String key, String message);
