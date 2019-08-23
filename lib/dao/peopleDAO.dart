import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:basic/models/peopleModel.dart';

Database db;

class CreatePeopleDAO{
  static const peopleTable = 'people';
  static const id = 'id';
  static const name = 'name';
  static const number = 'number';
  static const isDeleted = 'isDeleted';

  static void databaseLog(String functionName, String sql,
      [List<Map<String, dynamic>> selectQueryResult, int insertAndUpdateQueryResult]){
    print(functionName);
    print(sql);
    if (selectQueryResult !=null){
      print(selectQueryResult);
    }else if (insertAndUpdateQueryResult != null){
      prettyUri(insertAndUpdateQueryResult);
    }
  }

  Future<void> createPeopleTable(Database db) async{
    final peopleSql = '''CREATE TABLE $peopleTable
    (
      $id INTEGER PRIMARY KEY AUTOINCREMENT,
      $name TEXT,
      $number TEXT,
      $isDeleted BIT NOT NULL
    )''';

    await db.execute(peopleSql);
  }

  Future<String> getDatabasePath(String dbName) async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, dbName);

    //make sure the folder exists
    if (await Directory(dirname(path)).exists()) {
      //await deleteDatabase(path);
    } else {
      await Directory(dirname(path)).create(recursive: true);
    }
    return path;
  }

  Future<void> initDatabase() async {
    final path = await getDatabasePath('people_db');
    db = await openDatabase(path, version: 1, onCreate: onCreate);
    print(db);
  }

  Future<void> onCreate(Database db, int version) async {
    await createPeopleTable(db);
  }

  /*final Future<Database> database = openDatabase(
    join('people_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE id people(name TEXT, number TEXT)",
      );
    },

    version: 1,
  );*/
}

