import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databasename = "Person.db";
  static final _databaseversion = 1;
  static final table = "mytable";
  static final coloumnId = "id";
  static final coloumnname = "name";
  static final coloummodel = "model";
  static final coloumphoto = "photo";
  static final coloumnprice = "price";
  static final coloumncapacity = "capacity";
  static final coloumncolor = "color";

  static Database _database;
  //this is a database variable
  DatabaseHelper._privateconstructor();
  static final DatabaseHelper instance = DatabaseHelper
      ._privateconstructor(); //this saves from crashes it makes only one object

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initializeDatabase();
    return _database;
  }

  _initializeDatabase() async {
    //create directory and join path with database name
    Directory documentdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentdirectory.path, _databasename);
    return await openDatabase(path,
        version: _databaseversion, onCreate: _createdatabase);
  }

  Future _createdatabase(Database db, int version) async {
    await db.execute('''
                CREATE TABLE $table(
                $coloumnId INTEGER PRIMARY KEY,
                $coloumnname TEXT NOT NULL,
                $coloumnprice Text NOT NULL,
                $coloummodel  TEXT NOT NULL,
                $coloumphoto  TEXT NOT NULL,
                $coloumncapacity  TEXT NOT NULL,
                $coloumncolor  TEXT NOT NULL
);
                '''); //dont insert , on last
  }

  //function to insert a data iin database
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return db.insert(table, row);
  } //row is a local variable

  Future<List<Map<String, dynamic>>> queryall() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  Future<List<Map<String, dynamic>>> queryspecific(int age) async {
    Database db = await instance.database;
    var res = await db.query(table, where: "age > ?", whereArgs: [age]);

    return res;
  }

  Future deletedata() async {
    Database db = await instance.database;
    //int res = await db.delete(table, where: "id =?", whereArgs: [id]);
    db.delete(table);
    //return res;
  }

  Future<int> update(int id) async {
    Database db = await instance.database;
    var res = await db.update(table, {"name": "Ram", "age": 88},
        where: "id =?", whereArgs: [id]);
    return res;
  }
}
