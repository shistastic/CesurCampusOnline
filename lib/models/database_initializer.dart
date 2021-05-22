import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

getDataBase() async {
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'campus.db'),
    onCreate: (db, version) {

      db.execute(
          "CREATE TABLE user(id INTEGER PRIMARY KEY, userId INTEGER, fullname TEXT, dni TEXT, email TEXT, accountType TEXT)");
      },

    version: 1,
  );

  return database;
}