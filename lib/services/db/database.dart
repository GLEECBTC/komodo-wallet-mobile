import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../blocs/wallet_bloc.dart';
import '../../model/article.dart';
import '../../model/coin.dart';
import '../../model/wallet.dart';
import '../../model/wallet_security_settings.dart';
import '../../utils/log.dart';
import '../../utils/utils.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Db {
  static Database _db;
  static bool _initInvoked = false;

  static Future<Database> get db async {
    // Protect the database from being opened and initialized multiple times.
    if (_initInvoked) {
      await pauseUntil(() => _db != null);
      return _db;
    }

    _initInvoked = true;
    _db = await _initDB();
    return _db;
  }

  static Future<Database> _initDB() async {
    final Directory documentsDirectory = await applicationDocumentsDirectory;
    final String path = join(documentsDirectory.path, 'AtomicDEX.db');
    String _articleTable = '''
      CREATE TABLE ArticlesSaved (
          id TEXT PRIMARY KEY,
          media TEXT,
          title TEXT,
          header TEXT,
          body TEXT,
          keywords TEXT,
          isSavedArticle BIT,
          creationDate TEXT,
          author TEXT,
          v INTEGER
        )
      ''';
    String _walletTable([bool newValue = false]) => '''
      CREATE TABLE ${newValue ? 'new_' : ''}Wallet (
          id TEXT PRIMARY KEY,
          name TEXT,
          activate_pin_protection BIT,
          activate_bio_protection BIT,
          switch_pin_log_out_on_exit BIT,
          enable_camo BIT,
          is_camo_active BIT,
          camo_fraction INTEGER,
          camo_balance TEXT,
          camo_session_started_at INTEGER
        )
      ''';
    String _currentWalletTable([bool newValue = false]) => '''
      CREATE TABLE ${newValue ? 'new_' : ''}CurrentWallet (
          id TEXT PRIMARY KEY,
          name TEXT,
          activate_pin_protection BIT,
          activate_bio_protection BIT,
          switch_pin_log_out_on_exit BIT,
          enable_camo BIT,
          is_camo_active BIT,
          camo_fraction INTEGER,
          camo_balance TEXT,
          camo_session_started_at INTEGER
        )
      ''';
    String _listOfCoinActivatedTable = '''
      CREATE TABLE ListOfCoinsActivated (
          wallet_id TEXT PRIMARY KEY,
          coins TEXT
        )
      ''';
    final db = await openDatabase(
      path,
      version: 3,
      onOpen: (Database db) {},
      onCreate: (Database db, int version) async {
        Log('database:35', 'initDB, onCreate version $version');
        await db.execute(_articleTable);
        await db.execute(_walletTable());
        await db.execute(_currentWalletTable());
        await db.execute(_listOfCoinActivatedTable);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        Log('database',
            'initDB, onUpgrade, oldVersion: $oldVersion newVersion: $newVersion');

        Log('database', 'initDB, onUpgrade, upgrading to version $newVersion');
        // MRC: I could have simply added the new fields to the table,
        // but I'm opting to recreating the tables
        // The sqlite docs recommend doings a transation and doing things in a specific order
        // See https://www.sqlite.org/lang_altertable.html for info
        try {
          // MRC: I figured out that one of the possible ways to successfully migrate
          // the activated coins was some relatively complex SQL on db upgrade,
          // and it was accepted over clearing completely the coins list
          //
          // So, please look at the code below carrefully

          List<String> listOfCoins = <String>[];

          //

          final batch = db.batch();
          // when migrating from version 1, run this for the coins activated migration
          if (oldVersion == 1) {
            String walletId;
            final currentWallet =
                await db.query('CurrentWallet', columns: ['id'], limit: 1);

            if (currentWallet != null && currentWallet.isNotEmpty) {
              walletId = currentWallet.first['id'];

              if (walletId != null && walletId.isNotEmpty) {
                final coinsQuery =
                    await db.query('CoinsActivated', columns: ['abbr']);

                if (coinsQuery != null && coinsQuery.isNotEmpty) {
                  listOfCoins =
                      coinsQuery.map((c) => c['abbr'].toString()).toList();
                }
              }
            }
            batch.execute(_listOfCoinActivatedTable);
            batch.execute('DROP TABLE CoinsActivated');
            if ((walletId != null && walletId.isNotEmpty) &&
                listOfCoins.isNotEmpty) {
              Log('database',
                  'initDB, onUpgrade, Attempting to migrate previously activated coins');
              final coinsString = listOfCoins.join(',');
              batch.insert(
                'ListOfCoinsActivated',
                <String, String>{
                  'wallet_id': walletId,
                  'coins': coinsString,
                },
              );
            }
          }

          batch.execute(_walletTable(true));
          batch.execute(_currentWalletTable(true));
          batch.execute('''
      INSERT INTO
      new_Wallet(id, name)
      SELECT id, name
      FROM Wallet
      ''');
          batch.execute('''
      INSERT INTO new_CurrentWallet(id, name)
      SELECT id, name
      FROM CurrentWallet
      ''');
          batch.execute('DROP TABLE Wallet');
          batch.execute('DROP TABLE CurrentWallet');
          batch.execute('ALTER TABLE new_Wallet RENAME TO Wallet');
          batch
              .execute('ALTER TABLE new_CurrentWallet RENAME TO CurrentWallet');
          // MRC: We need to remove the WalletSnapshot because it causes coins to show up
          // even though they aren't in the db due to the ListOfCoinsActivated migration
          batch.execute('DELETE FROM WalletSnapshot');

          batch.commit();
          Log('database',
              'initDB, onUpgrade, upgraded database to version $newVersion successfully');
        } catch (e) {
          Log('database',
              'initDB, onUpgrade, unable to upgrade database to version $newVersion, error ${e.toString()}');
          rethrow;
        }
      },
    );

    // Drop tables no longer in use.
    await db.execute('DROP TABLE IF EXISTS CoinsDefault');
    await db.execute('DROP TABLE IF EXISTS CoinsConfig');
    await db.execute('DROP TABLE IF EXISTS TxNotes');

    // id is the tx_hash for transactions and the swap id for swaps
    await db.execute('''
      CREATE TABLE IF NOT EXISTS Notes (
        id TEXT PRIMARY KEY,
        note TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS WalletSnapshot (
        wallet_id TEXT PRIMARY KEY,
        snapshot TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS OrderbookSnapshot (
        id INTEGER PRIMARY KEY,
        snapshot TEXT
      )
    ''');

    return db;
  }

  static Future<int> saveArticle(Article newArticle) async {
    final Database db = await Db.db;

    final Map<String, dynamic> row = <String, dynamic>{
      'id': newArticle.id,
      'title': newArticle.title,
      'media': json.encode(newArticle.media),
      'header': newArticle.header,
      'body': newArticle.body,
      'keywords': newArticle.keywords,
      'isSavedArticle': newArticle.isSavedArticle,
      'creationDate': newArticle.creationDate.toString(),
      'author': newArticle.author ?? 'Gleec',
      'v': newArticle.v
    };

    return await db.insert('ArticlesSaved ', row);
  }

  static Future<List<Article>> getAllArticlesSaved() async {
    final Database db = await Db.db;

    // Query the table for All The Article.
    final List<Map<String, dynamic>> maps = await db.query('ArticlesSaved');
    Log('database:105', maps.length);
    // Convert the List<Map<String, dynamic> into a List<Article>.
    return List<Article>.generate(maps.length, (int i) {
      return Article(
        id: maps[i]['id'],
        media: List<String>.from(json.decode(maps[i]['media'])),
        title: maps[i]['title'],
        header: maps[i]['header'],
        body: maps[i]['body'],
        keywords: maps[i]['keywords'],
        author: maps[i]['author'],
        isSavedArticle: maps[i]['isSavedArticle'] == 1,
        creationDate: DateTime.parse(maps[i]['creationDate']),
        v: maps[i]['v'],
      );
    });
  }

  static Future<void> deleteArticle(Article article) async {
    final Database db = await Db.db;

    // Remove the Article from the Database
    await db.delete(
      'ArticlesSaved',
      // Use a `where` clause to delete a specific article
      where: 'id = ?',
      // Pass the Article's id through as a whereArg to prevent SQL injection
      whereArgs: <dynamic>[article.id],
    );
  }

  static Future<void> deleteAllArticles() async {
    final Database db = await Db.db;
    await db.rawDelete('DELETE FROM ArticlesSaved');
  }

  static Future<int> saveWallet(Wallet newWallet,
      [WalletSecuritySettings walletSecuritySettings]) async {
    final Database db = await Db.db;

    walletSecuritySettings ??= WalletSecuritySettings();

    final Map<String, dynamic> row = <String, dynamic>{
      'id': newWallet.id,
      'name': newWallet.name,
      'activate_pin_protection':
          walletSecuritySettings.activatePinProtection ? 1 : 0,
      'activate_bio_protection':
          walletSecuritySettings.activateBioProtection ? 1 : 0,
      'enable_camo': walletSecuritySettings.enableCamo ? 1 : 0,
      'is_camo_active': walletSecuritySettings.isCamoActive ? 1 : 0,
      'camo_fraction': walletSecuritySettings.camoFraction,
      'camo_balance': walletSecuritySettings.camoBalance,
      'camo_session_started_at': walletSecuritySettings.camoSessionStartedAt,
      'switch_pin_log_out_on_exit': walletSecuritySettings.logOutOnExit ? 1 : 0,
    };

    return await db.insert('Wallet ', row);
  }

  static Future<List<Wallet>> getAllWallet() async {
    final Database db = await Db.db;

    // Query the table for All The Article.
    final List<Map<String, dynamic>> maps = await db.query('Wallet');
    Log('database:157', maps.length);
    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List<Wallet>.generate(maps.length, (int i) {
      return Wallet(
        id: maps[i]['id'],
        name: maps[i]['name'],
      );
    });
  }

  Future<void> deleteAllWallets() async {
    final Database db = await Db.db;
    await db.rawDelete('DELETE FROM Wallet');
  }

  static Future<void> deleteWallet(Wallet wallet) async {
    Log('database:173', 'deleteWallet] id: ${wallet.id}');
    final Database db = await Db.db;
    await db.delete('Wallet', where: 'id = ?', whereArgs: <dynamic>[wallet.id]);
  }

  static Future<int> saveCurrentWallet(Wallet currentWallet,
      [WalletSecuritySettings walletSecuritySettings]) async {
    await deleteCurrentWallet();
    walletBloc.setCurrentWallet(currentWallet);
    final Database db = await Db.db;

    walletSecuritySettings ??= WalletSecuritySettings();

    final Map<String, dynamic> row = <String, dynamic>{
      'id': currentWallet.id,
      'name': currentWallet.name,
      'activate_pin_protection':
          walletSecuritySettings.activatePinProtection ? 1 : 0,
      'activate_bio_protection':
          walletSecuritySettings.activateBioProtection ? 1 : 0,
      'enable_camo': walletSecuritySettings.enableCamo ? 1 : 0,
      'is_camo_active': walletSecuritySettings.isCamoActive ? 1 : 0,
      'camo_fraction': walletSecuritySettings.camoFraction,
      'camo_balance': walletSecuritySettings.camoBalance,
      'camo_session_started_at': walletSecuritySettings.camoSessionStartedAt,
      'switch_pin_log_out_on_exit': walletSecuritySettings.logOutOnExit ? 1 : 0,
    };

    return await db.insert('CurrentWallet ', row);
  }

  static Future<Wallet> getCurrentWallet() async {
    final Database db = await Db.db;

    final List<Map<String, dynamic>> maps = await db.query('CurrentWallet');

    final List<Wallet> wallets = List<Wallet>.generate(maps.length, (int i) {
      return Wallet(
        id: maps[i]['id'],
        name: maps[i]['name'],
      );
    });
    if (wallets.isEmpty) {
      return null;
    } else {
      return wallets[0];
    }
  }

  static Future<void> deleteCurrentWallet() async {
    final Database db = await Db.db;
    await db.rawDelete('DELETE FROM CurrentWallet');

    // Needed so coins aren't accidentally reused between wallets
    _active.clear();
  }

  static final Set<String> _active = {};
  static bool _activeFromDb = false;

  static Future<List<String>> getCoinsFromDb() async {
    final Database db = await Db.db;
    final wallet = await getCurrentWallet();

    final r = await db.query(
      'ListOfCoinsActivated',
      columns: ['coins'],
      where: 'wallet_id = ?',
      whereArgs: [wallet.id],
    );
    if (r != null && r.isNotEmpty) {
      final row = r.first;
      final String coins = row['coins'];
      if (coins != null && coins != '') {
        final listOfCoins = coins.split(',');
        if (listOfCoins != null && listOfCoins.isNotEmpty) {
          return listOfCoins.map((c) => c.trim()).toList();
        }
      }
    }
    return [];
  }

  static Future<Set<String>> get activeCoins async {
    if (_active.isNotEmpty && _activeFromDb) return _active;

    final listOfCoins = await getCoinsFromDb();

    if (listOfCoins != null && listOfCoins.isNotEmpty) {
      _active.addAll(listOfCoins);
    }

    _activeFromDb = true;
    if (_active.isNotEmpty) return _active;

    final known = await coins;

    // Search for coins with 'isDefault' flag
    Iterable<String> defaultCoins = known.values
        .where((Coin coin) => coin.isDefault == true)
        .map<String>((Coin coin) => coin.abbr);

    // If no 'isDefault' coins provided, use the first two coins by default
    if (defaultCoins.isEmpty) defaultCoins = known.keys.take(2);

    _active.addAll(defaultCoins);

    return _active;
  }

  /// Add the coin to the list of activated coins.
  static Future<void> coinActive(Coin coin) async {
    _active.add(coin.abbr);
    final coinsString = _active.join(',');

    final Database db = await Db.db;
    final wallet = await getCurrentWallet();

    // Check if coins for current wallet are saved
    final currentWallet = await db.query('ListOfCoinsActivated',
        where: 'wallet_id = ?', whereArgs: [wallet.id]);
    if (currentWallet.isNotEmpty) {
      await db.update(
        'ListOfCoinsActivated',
        <String, String>{'coins': coinsString},
        where: 'wallet_id = ?',
        whereArgs: [wallet.id],
      );
    } else {
      await db.insert(
        'ListOfCoinsActivated',
        <String, String>{
          'wallet_id': wallet.id,
          'coins': coinsString,
        },
      );
    }
  }

  /// Remove the coin from the list of activated coins.
  static Future<void> coinInactive(String ticker) async {
    Log('database', 'coinInactive] removing $ticker from active coins');

    _active.remove(ticker);
    final coinsString = _active.join(',');

    final Database db = await Db.db;
    final wallet = await getCurrentWallet();

    await db.update(
      'ListOfCoinsActivated',
      <String, String>{'coins': coinsString},
      where: 'wallet_id = ?',
      whereArgs: [wallet.id],
    );
  }

  static Future<void> deleteNote(String id) async {
    final Database db = await Db.db;

    return await db.delete('Notes', where: 'id = ?', whereArgs: <String>[id]);
  }

  static Future<int> saveNote(String id, String note) async {
    final Database db = await Db.db;

    final r = await db
        .rawQuery('SELECT COUNT(*) FROM Notes WHERE id = ?', <String>[id]);
    final count = Sqflite.firstIntValue(r);

    if (count == 0) {
      final Map<String, dynamic> row = <String, dynamic>{
        'id': id,
        'note': note,
      };

      return await db.insert('Notes', row);
    } else {
      final Map<String, dynamic> row = <String, dynamic>{
        'note': note,
      };
      return await db
          .update('Notes', row, where: 'id = ?', whereArgs: <String>[id]);
    }
  }

  static Future<String> getNote(String id) async {
    final Database db = await Db.db;

    final List<Map<String, dynamic>> maps =
        await db.query('Notes', where: 'id = ?', whereArgs: <String>[id]);

    final List<String> notes = List<String>.generate(maps.length, (int i) {
      return maps[i]['note'];
    });
    if (notes.isEmpty) {
      return null;
    } else {
      return notes[0];
    }
  }

  static Future<Map<String, String>> getAllNotes() async {
    final Database db = await Db.db;

    final List<Map<String, dynamic>> maps = await db.query('Notes');
    Log('database:312', maps.length);

    final Map<String, String> r = {for (var m in maps) m['id']: m['note']};

    return r;
  }

  static Future<void> addAllNotes(Map<String, String> allNotes) async {
    //final Database db = await Db.db;

    allNotes.forEach((k, v) async {
      await saveNote(k, v);
    });
  }

  static Future<void> saveWalletSnapshot(String jsonStr) async {
    final Wallet wallet = await getCurrentWallet();
    if (wallet == null) return;

    final Database db = await Db.db;
    try {
      await db.insert('WalletSnapshot',
          <String, dynamic>{'wallet_id': wallet.id, 'snapshot': jsonStr},
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (_) {}
  }

  static Future<String> getWalletSnapshot({Wallet wallet}) async {
    wallet ??= await getCurrentWallet();

    if (wallet == null) return null;

    final Database db = await Db.db;

    List<Map<String, dynamic>> maps;
    try {
      maps = await db.query(
        'WalletSnapshot',
        where: 'wallet_id = ?',
        whereArgs: [wallet.id],
      );
    } catch (_) {}

    if (maps == null || maps.isEmpty) return null;

    return maps.first['snapshot'];
  }

  static Future<void> saveOrderbookSnapshot(String jsonStr) async {
    final Database db = await Db.db;
    try {
      await db.insert(
          'OrderbookSnapshot', <String, dynamic>{'id': 1, 'snapshot': jsonStr},
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      print('Error saving orderbook snapshot: $e');
    }
  }

  static Future<String> getOrderbookSnapshot() async {
    final Database db = await Db.db;

    List<Map<String, dynamic>> maps;
    try {
      maps = await db.query(
        'OrderbookSnapshot',
        where: 'id = ?',
        whereArgs: [1],
      );
    } catch (e) {
      print('Error getting orderbook snapshot: $e');
    }

    if (maps == null || maps.isEmpty) return null;

    return maps.first['snapshot'];
  }

  static Future<WalletSecuritySettings>
      getCurrentWalletSecuritySettings() async {
    final Database db = await Db.db;

    final List<Map<String, dynamic>> maps = await db.query('CurrentWallet');

    final List<WalletSecuritySettings> walletsSecuritySettings =
        List<WalletSecuritySettings>.generate(maps.length, (int i) {
      return WalletSecuritySettings(
        activatePinProtection:
            maps[i]['activate_pin_protection'] == 1 ? true : false,
        activateBioProtection:
            maps[i]['activate_bio_protection'] == 1 ? true : false,
        enableCamo: maps[i]['enable_camo'] == 1 ? true : false,
        isCamoActive: maps[i]['is_camo_active'] == 1 ? true : false,
        camoFraction: maps[i]['camo_fraction'],
        camoBalance: maps[i]['camo_balance'],
        camoSessionStartedAt: maps[i]['camo_session_started_at'],
        logOutOnExit: maps[i]['switch_pin_log_out_on_exit'] == 1 ? true : false,
      );
    });
    if (walletsSecuritySettings.isEmpty) {
      return null;
    } else {
      return walletsSecuritySettings[0];
    }
  }

  static Future<WalletSecuritySettings> getWalletSecuritySettings(
      Wallet wallet) async {
    final Database db = await Db.db;

    final List<Map<String, dynamic>> maps = await db.query(
      'Wallet',
      where: 'id = ?',
      whereArgs: [wallet.id],
    );

    final List<WalletSecuritySettings> walletsSecuritySettings =
        List<WalletSecuritySettings>.generate(maps.length, (int i) {
      return WalletSecuritySettings(
        activatePinProtection:
            maps[i]['activate_pin_protection'] == 1 ? true : false,
        activateBioProtection:
            maps[i]['activate_bio_protection'] == 1 ? true : false,
        enableCamo: maps[i]['enable_camo'] == 1 ? true : false,
        isCamoActive: maps[i]['is_camo_active'] == 1 ? true : false,
        camoFraction: maps[i]['camo_fraction'],
        camoBalance: maps[i]['camo_balance'],
        camoSessionStartedAt: maps[i]['camo_session_started_at'],
        logOutOnExit: maps[i]['switch_pin_log_out_on_exit'] == 1 ? true : false,
      );
    });
    if (walletsSecuritySettings.isEmpty) {
      return null;
    } else {
      return walletsSecuritySettings[0];
    }
  }

  static Future<void> updateWalletSecuritySettings(
      WalletSecuritySettings walletSecuritySettings,
      {bool allWallets = false}) async {
    final Database db = await Db.db;

    Wallet currentWallet = await getCurrentWallet();

    final batch = db.batch();

    final updateMap = {
      'activate_pin_protection':
          walletSecuritySettings.activatePinProtection ? 1 : 0,
      'activate_bio_protection':
          walletSecuritySettings.activateBioProtection ? 1 : 0,
      'enable_camo': walletSecuritySettings.enableCamo ? 1 : 0,
      'is_camo_active': walletSecuritySettings.isCamoActive ? 1 : 0,
      'camo_fraction': walletSecuritySettings.camoFraction,
      'camo_balance': walletSecuritySettings.camoBalance,
      'camo_session_started_at': walletSecuritySettings.camoSessionStartedAt,
      'switch_pin_log_out_on_exit': walletSecuritySettings.logOutOnExit ? 1 : 0,
    };

    await db.update(
      'Wallet',
      updateMap,
      where: allWallets ? null : 'id = ?',
      whereArgs: allWallets ? null : [currentWallet.id],
    );
    await db.update(
      'CurrentWallet',
      updateMap,
      where: allWallets ? null : 'id = ?',
      whereArgs: allWallets ? null : [currentWallet.id],
    );

    batch.commit();
  }
}
