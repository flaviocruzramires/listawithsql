// import 'dart:async';

// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_app/dog.dart';

// class DbTeste {
//   Dog? dog;

//   static execute() async {
//     // Avoid errors caused by flutter upgrade.
//     // Importing 'package:flutter/widgets.dart' is required.
//     WidgetsFlutterBinding.ensureInitialized();
//     // Open the database and store the reference.
//     final database = openDatabase(
//       // Set the path to the database. Note: Using the `join` function from the
//       // `path` package is best practice to ensure the path is correctly
//       // constructed for each platform.
//       join(await getDatabasesPath(), 'doggie_database.db'),
//       // When the database is first created, create a table to store dogs.
//       onCreate: (db, version) {
//         // Run the CREATE TABLE statement on the database.
//         return db.execute(
//           'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//         );
//       },
//       // Set the version. This executes the onCreate function and provides a
//       // path to perform database upgrades and downgrades.
//       version: 1,
//     );

//     // Define a function that inserts dogs into the database

//     // A method that retrieves all the dogs from the dogs table.

//     Future<void> deleteDog(int id) async {
//       // Get a reference to the database.
//       final db = await database;

//       // Remove the Dog from the database.
//       await db.delete(
//         'dogs',
//         // Use a `where` clause to delete a specific dog.
//         where: 'id = ?',
//         // Pass the Dog's id as a whereArg to prevent SQL injection.
//         whereArgs: [id],
//       );
//     }

//     // Create a Dog and add it to the dogs table
//     var fido = Dog(
//       id: 0,
//       name: 'Fido',
//       age: 35,
//     );

//     await insertDog(fido);

//     // Now, use the method above to retrieve all the dogs.
//     print(await dogs()); // Prints a list that include Fido.

//     // Update Fido's age and save it to the database.
//     fido = Dog(
//       id: fido.id,
//       name: fido.name,
//       age: fido.age! + 7,
//     );
//     await updateDog(fido);

//     // Print the updated results.
//     print(await dogs()); // Prints Fido with age 42.

//     // Delete Fido from the database.
//     await deleteDog(fido.id!);

//     // Print the list of dogs (empty).
//     print(await dogs());
//   }

//   // Convert a Dog into a Map. The keys must correspond to the names of the
//   // columns in the database.

//   // Implement toString to make it easier to see information about
//   // each dog when using the print statement.

// }
