import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:komodo_dex/utils/log.dart';
import 'package:komodo_dex/utils/utils.dart';

/// Provides methods for fetching coin data either from local assets or a remote Git repository.
///
/// `CoinUpdater` uses a singleton pattern to ensure a single instance throughout the app's lifecycle.
/// It checks first if there is a cached version of the data. If not, it uses the bundled asset.
/// In the background, it tries to fetch the most recent data and cache it for future launches.
///
/// Usage:
/// ```dart
/// final coinUpdater = CoinUpdater();
/// final config = await coinUpdater.getConfig();
/// final coins = await coinUpdater.getCoins();
/// ```
///
/// NB! [coinsRepoBranch] and [coinsRepoUrl] only take effect for the next
/// launch of the app. So 2x restart is needed to switch to a different branch.
///
/// TODO: Implement coin icon fetching.
class CoinUpdater {
  factory CoinUpdater() => _instance;

  CoinUpdater._internal();

  static final CoinUpdater _instance = CoinUpdater._internal();

  /// The branch of the coins repository to use.
  //! QA: change branch name here and then restart twice after logging in.
  static const coinsRepoBranch = 'master';

  static const coinsRepoUrl =
      'https://raw.githubusercontent.com/KomodoPlatform/coins';

  static const isUpdateEnabled = true;

  final String localAssetPathConfig = 'assets/coins_config_tcp.json';
  final String localAssetPathCoins = 'assets/coins.json';

  // coins_config_tcp.json prefers SSL where available, but falls back to TCP
  // when SSL is not available.
  //Monitor post-release and revert in case expired certs area a common issue.
  String get remotePathConfig =>
      '$coinsRepoUrl/$coinsRepoBranch/utils/coins_config_tcp.json';
  String get remotePathCoins => '$coinsRepoUrl/$coinsRepoBranch/coins';

  String _cachedConfig;
  String _cachedCoins;

  Future<String> _fetchAsset(String path) =>
      rootBundle.loadString(path, cache: false);

  Future<File> _getLocalFile(String filename) async {
    final directory = await applicationDocumentsDirectory;
    return File('${directory.path}/config_updates/$filename');
  }

  Future<String> _fetchCoinFileOrAsset(UpdateCacheParams params) async {
    File cacheFile;
    String property;

    try {
      try {
        cacheFile = await _getLocalFile(params.cacheFileName);

        final maybeCacheValue = await compute<String, String>(
          _tryReadValidJsonFile,
          cacheFile.path,
        );

        property = maybeCacheValue ?? property;
      } catch (e) {
        Log(
          'CoinUpdater',
          'Error reading coin config cache file: ${e.toString()}',
        );
      }

      property ??= await _fetchAsset(params.localPath);

      return property;
    } catch (e) {
      Log('CoinUpdater', 'Error fetching or caching ${params.cacheKey}: $e');
      rethrow;
    } finally {
      if (isUpdateEnabled) {
        _startUpdateCacheInBackground(params.remoteUrl, cacheFile);
      }
    }
  }

  void _startUpdateCacheInBackground(String remoteUrl, File cacheFile) async {
    try {
      Log('CoinUpdater', 'Updating coins in background...');
      await compute<Map<String, dynamic>, void>(
        _updateFileFromServer,
        <String, dynamic>{
          'remoteUrl': remoteUrl,
          'filePath': cacheFile.path,
        },
      );

      Log(
        'CoinUpdater',
        'Coin updater updated coins to latest commit on branch $coinsRepoBranch'
            ' from $coinsRepoUrl. Changes will take effect on next app launch.',
      );
    } catch (e) {
      Log('CoinUpdater', 'Error updating coins in background: $e');
    }
  }

  Future<String> getConfig() async {
    return _cachedConfig ??= await _fetchCoinFileOrAsset(
      UpdateCacheParams(
        localPath: localAssetPathConfig,
        remoteUrl: remotePathConfig,
        cacheFileName: 'coins_config_cache.json',
        cacheKey: 'config',
      ),
    );
  }

  Future<String> getCoins() async {
    return _cachedCoins ??= await _fetchCoinFileOrAsset(
      UpdateCacheParams(
        localPath: localAssetPathCoins,
        remoteUrl: remotePathCoins,
        cacheFileName: 'coins_cache.json',
        cacheKey: 'coins',
      ),
    );
  }
}

class UpdateCacheParams {
  final String localPath;
  final String remoteUrl;
  final String cacheFileName;
  final String cacheKey;

  UpdateCacheParams({
    @required this.localPath,
    @required this.remoteUrl,
    @required this.cacheFileName,
    @required this.cacheKey,
  });
}

/// Isolate-safe method for returning the contents of a JSON file if it is valid
Future<String> _tryReadValidJsonFile(String path) async {
  try {
    final contents = await File(path).readAsString();

    if (!_isJsonValid(contents)) return null;

    return contents;
  } catch (e) {
    return null;
  }
}

/// An isolate-safe method for checking if a string is valid JSON.
bool _isJsonValid(String json) {
  try {
    if (json?.isEmpty ?? true) return false;

    jsonDecode(json);
    return true;
  } catch (e) {
    return false;
  }
}

/// Isolate-safe method for fetching and updating a JSON file from a
/// remote server.
Future<void> _updateFileFromServer(Map<String, dynamic> params) async {
  final String remoteUrl = params['remoteUrl'];
  final String filePath = params['filePath'];

  try {
    final response = await http.get(Uri.parse(remoteUrl));

    if (response.statusCode != 200 || !_isJsonValid(response.body)) return;

    final file = File(filePath);

    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }

    file.writeAsStringSync(response.body, flush: true);
  } catch (e) {
    print('Error in isolate: $e');

    rethrow;
  }
}
