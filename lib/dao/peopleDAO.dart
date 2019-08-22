import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:basic/models/peopleModel.dart';

final Future<Database> database = openDatabase(
  join('people_database.db'),
  onCreate: (db, version) {
    return db.execute(
      "CREATE TABLE people(name TEXT, number TEXT)",
    );
  },

  version: 1,
);