import 'package:sqflite/sqflite.dart';
import 'package:todolist/databaseConnection.dart';

class Repository {

  late DatabaseConnection _databaseConnection1;

  Repository() {
    _databaseConnection1 = DatabaseConnection();
  }

  static Database? _database1;

  Future<Database?> get myDatabase async {
    if (_database1 != null) {
      return _database1;
    } else {
      _database1 = await _databaseConnection1.setDatabase();
      return _database1;
    }
  }

  insertData(tablename, data) async {
    var con = await myDatabase;
    return await con!.insert(tablename, data);
  }

  readData(tablename) async {
    var con = await myDatabase;
    return await con!.query(tablename);
  }

  readSingledata(tablename, id) async {
    var con = await myDatabase;
    return await con!.query(tablename, where: "id = ?", whereArgs: [id]);
  }

  updateData(tablename, data) async {
    var con = await myDatabase;
    return await con!
        .update(tablename, data, where: "id = ?", whereArgs: [data['id']]);
  }

  deleteData(tablename, data) async {
    var con = await myDatabase;
    return await con!
        .delete(tablename, where: "id = ?", whereArgs: [data['id']]);
  }
}
