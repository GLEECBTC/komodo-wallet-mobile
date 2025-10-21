import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/wallet.dart';

class DatabaseService {
  static Database? _db;
  static bool _initInvoked = false;

  static Future<Database> get db async {
    if (_initInvoked) {
      while (_db == null) {
        await Future.delayed(const Duration(milliseconds: 10));
      }
      return _db!;
    }

    _initInvoked = true;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final String path = join(documentsDirectory.path, 'AtomicDEX.db');

    String articleTable = '''
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
    String walletTable([bool newValue = false]) => '''
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
    String currentWalletTable([bool newValue = false]) => '''
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
    String listOfCoinActivatedTable = '''
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
        // DatabaseService: onCreate version $version
        await db.execute(articleTable);
        await db.execute(walletTable());
        await db.execute(currentWalletTable());
        await db.execute(listOfCoinActivatedTable);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        // DatabaseService: onUpgrade, oldVersion: $oldVersion newVersion: $newVersion

        // Same migration logic as main app
        try {
          List<String> listOfCoins = <String>[];

          final batch = db.batch();
          // when migrating from version 1, run this for the coins activated migration
          if (oldVersion == 1) {
            String? walletId;
            final currentWallet =
                await db.query('CurrentWallet', columns: ['id'], limit: 1);

            if (currentWallet.isNotEmpty) {
              walletId = currentWallet.first['id'] as String?;

              if (walletId != null && walletId.isNotEmpty) {
                final coinsQuery =
                    await db.query('CoinsActivated', columns: ['abbr']);

                if (coinsQuery.isNotEmpty) {
                  listOfCoins =
                      coinsQuery.map((c) => c['abbr'].toString()).toList();
                }
              }
            }
            batch.execute(listOfCoinActivatedTable);
            batch.execute('DROP TABLE CoinsActivated');
            if ((walletId != null && walletId.isNotEmpty) &&
                listOfCoins.isNotEmpty) {
              // DatabaseService: Attempting to migrate previously activated coins
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

          batch.execute(walletTable(true));
          batch.execute(currentWalletTable(true));
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
          // Remove the WalletSnapshot because it causes coins to show up
          // even though they aren't in the db due to the ListOfCoinsActivated migration
          batch.execute('DELETE FROM WalletSnapshot');

          batch.commit();
          // DatabaseService: upgraded database to version $newVersion successfully
        } catch (e) {
          // DatabaseService: unable to upgrade database to version $newVersion, error ${e.toString()}'
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

  static Future<List<Wallet>> getAllWallets() async {
    final Database database = await db;

    final List<Map<String, dynamic>> maps = await database.query('Wallet');

    return List<Wallet>.generate(maps.length, (int i) {
      return Wallet(id: maps[i]['id'], name: maps[i]['name']);
    });
  }

  static Future<Wallet?> getCurrentWallet() async {
    final Database database = await db;

    final List<Map<String, dynamic>> maps = await database.query(
      'CurrentWallet',
    );

    if (maps.isEmpty) {
      return null;
    }

    return Wallet(id: maps[0]['id'], name: maps[0]['name']);
  }
}
