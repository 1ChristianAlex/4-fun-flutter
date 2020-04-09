import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> database() async {
  return openDatabase(join(await getDatabasesPath(), 'user_data.db'),
      onCreate: (db, version) {
    return db.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, pass TEXT)");
  }, version: 1);
}
