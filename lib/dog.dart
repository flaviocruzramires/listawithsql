import 'dart:convert';
import 'package:sqflite_app/database_connection.dart';
import 'package:sqflite_app/dog_persistencia.dart';

class Dog {
  late final int? id;
  late String? name;
  late int? age;
  Dog({
    this.id,
    this.name,
    this.age,
  });

  // List<Map<String, dynamic>> listDynamicToMap() {}

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  incluirDog() {
    DatabaseConnection banco =
        DatabaseConnection(dataBaseName: 'doggie_database.db');
    DogPersistencia persistencia =
        DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
    persistencia.inserirDog(dog: this);
  }

  Future<List<Dog>> get getAllDog {
    DatabaseConnection banco =
        DatabaseConnection(dataBaseName: 'doggie_database.db');
    DogPersistencia persistencia =
        DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
    return persistencia.getalldogs();
  }

  Future<List<Map>> get getAllDogLista {
    DatabaseConnection banco =
        DatabaseConnection(dataBaseName: 'doggie_database.db');
    DogPersistencia persistencia =
        DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
    return persistencia.getAllDogsListMap();
  }

  Future<List<Map<String, dynamic>>> get getAllDogListaMapString {
    DatabaseConnection banco =
        DatabaseConnection(dataBaseName: 'doggie_database.db');
    DogPersistencia persistencia =
        DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
    return persistencia.getAllDogListaMapString();
  }

  @override
  String toString() => 'Dog(id: $id, name: $name, age: $age)';

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      id: map['id']?.toInt(),
      name: map['name'],
      age: map['age']?.toInt(),
    );
  }

  //factory Dog.toJson

  factory Dog.fromJson(String source) => Dog.fromMap(json.decode(source));
}
