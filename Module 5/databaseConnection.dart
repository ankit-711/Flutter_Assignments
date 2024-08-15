import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    // get current directory

    var directory2 = await getApplicationDocumentsDirectory();

    var path1 = join(directory2.path, "database");

    var database = await openDatabase(path1, version: 1, onCreate: createTable);

    return database;
  }

  Future<void> createTable(Database database, int version) async {
    String? sql =
        "CREATE TABLE task (id integer primary key autoincrement, name text, description text, time text, priority text, isComplete integer)";

    database.execute(sql);
  }
}
