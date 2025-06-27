import 'dart:async';
import 'package:path/path.dart';
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
    final documentsDirectory = await getDatabasesPath();
    final String path = join(documentsDirectory, 'AtomicDEX.db');

    final db = await openDatabase(
      path,
      version: 3,
      onOpen: (Database db) {},
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE Wallet (
            id TEXT PRIMARY KEY,
            name TEXT NOT NULL,
            activate_pin_protection INTEGER DEFAULT 0,
            activate_bio_protection INTEGER DEFAULT 0,
            enable_camo INTEGER DEFAULT 0,
            is_camo_active INTEGER DEFAULT 0
          )
        ''');

        await db.execute('''
          CREATE TABLE CurrentWallet (
            id TEXT PRIMARY KEY,
            name TEXT NOT NULL,
            activate_pin_protection INTEGER DEFAULT 0,
            activate_bio_protection INTEGER DEFAULT 0,
            enable_camo INTEGER DEFAULT 0,
            is_camo_active INTEGER DEFAULT 0
          )
        ''');
      },
    );

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
