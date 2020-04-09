import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class User {
  final String name;
  final String pass;

  User({this.name, this.pass});
}
