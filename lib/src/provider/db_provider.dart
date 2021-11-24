import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider.private();
  DBProvider.private();

  Future<Database> get database async {
    if (database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentDirectory.path, 'User_DB.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE users('
          'id INTEGER PRIMARY KEY,'
          'nombre TEXT,'
          'telefono TEXT,'
          'correo TEXT,'
          'direccion TEXT,'
          'genero TEXT,'
          'contrasena TEXT'
          ')'
          );
    });
  }

  //metodos
  
}
