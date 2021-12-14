import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class BancoDados {
  static final BancoDados? _instance = BancoDados._();
  Database? db;

  BancoDados._();

  factory BancoDados() {
    return _instance!;
  }

  Future<void> onCreate(Database db, int version) async {
    db.execute(
        'CREATE TABLE pessoas ( id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT )');
  }

  Future<void> openDb() async {
    return await getDatabasesPath().then((androidPath) async {
      String path = androidPath + '/exemplo.db';
      db = await openDatabase(path, version: 1, onCreate: onCreate);
    });
  }
}
