import 'package:sqflite/sqflite.dart';

import 'dbConnection.dart';

class Repository{
  DatabaseConnection _connection;

  Repository(){
    _connection=DatabaseConnection();
  }

  static Database _database;

  Future<Database> get database async{
    if(_database!=null) return _database;
    _database=await _connection.setDatabase();
  }
}