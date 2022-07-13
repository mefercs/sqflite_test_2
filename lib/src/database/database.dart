import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DogDB {
  Future<String> dbPath() => getDatabasesPath();

  //open the database
  Future<Database> openDb() async {
    return openDatabase(
      join(await dbPath(), "doggie_database.dart"),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
      },
      version: 1,
    );
  }

// Define a function that inserts dogs into the database
}
