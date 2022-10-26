// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_app/dog.dart';

// class DogPersistencia {
//   Dog dog;
//   Database bancoDeDados;
//   DogPersistencia({
//     required this.dog,
//     required this.bancoDeDados,
//   });

//   Future<void> inserirDog({required Dog dog}) async {
//     await bancoDeDados.insert('dog', dog.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//   }

//   Future<void> atualizarDog() async {
//     await bancoDeDados.update(
//       'dogs',
//       dog.toMap(),
//       where: 'id = ?',
//       whereArgs: [dog.id],
//     );
//   }

//   Future<void> deleteDog(int id) async {
//     await bancoDeDados.delete(
//       'dogs',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<List<Map>> getAllDogsListMap() {
//     return bancoDeDados.rawQuery('Select * from dogs');
//   }

//   // Future<List<String>> getAllDogListString() {
//   //   List<String> lista = [];

//   //   lista.add(value)
//   // }

//   Future<List<Map<String, dynamic>>> getAllDogListaMapString() {
//     return bancoDeDados.rawQuery('Select * from dogs');
//   }

//   Future<List<Dog>> getalldogs() async {
//     final List<Map<String, dynamic>> maps = await bancoDeDados.query('dogs');

//     // Convert the List<Map<String, dynamic> into a List<Dog>.
//     return List.generate(maps.length, (i) {
//       return Dog(
//         id: maps[i]['id'],
//         name: maps[i]['name'],
//         age: maps[i]['age'],
//       );
//     });
//   }
// }
