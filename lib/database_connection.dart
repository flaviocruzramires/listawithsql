import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  late final String dataBaseName;

  DatabaseConnection({
    required this.dataBaseName,
  });

  Future<dynamic> getdatabase() async {
    return openDatabase(join(await getDatabasesPath(), dataBaseName));
  }
}
