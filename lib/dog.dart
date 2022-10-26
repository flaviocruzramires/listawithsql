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

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id?.toMap(),
  //     'name': name?.toMap(),
  //     'age': age?.toMap(),
  //   };
  // }

  // incluirDog() {
  //   DatabaseConnection banco =
  //       DatabaseConnection(dataBaseName: 'doggie_database.db');
  //   DogPersistencia persistencia =
  //       DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
  //   persistencia.inserirDog(dog: this);
  // }

  // Future<List<Dog>> get getAllDog {
  //   DatabaseConnection banco =
  //       DatabaseConnection(dataBaseName: 'doggie_database.db');
  //   DogPersistencia persistencia =
  //       DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
  //   return persistencia.getalldogs();
  // }

  // Future<List<Map>> get getAllDogLista {
  //   DatabaseConnection banco =
  //       DatabaseConnection(dataBaseName: 'doggie_database.db');
  //   DogPersistencia persistencia =
  //       DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
  //   return persistencia.getAllDogsListMap();
  // }

  // Future<List<String>> get getAllDogListString {
  //   DatabaseConnection banco =
  //       DatabaseConnection(dataBaseName: 'doggie_database.db');
  //   DogPersistencia persistencia =
  //       DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
  //   return persistencia.getAllDogListString();
  // }

  // Future<List<Map<String, dynamic>>> get getAllDogListaMapString {
  //   DatabaseConnection banco =
  //       DatabaseConnection(dataBaseName: 'doggie_database.db');
  //   DogPersistencia persistencia =
  //       DogPersistencia(dog: this, bancoDeDados: banco.getdatabase());
  //   return persistencia.getAllDogListaMapString();
  // }

  // @override
  // String toString() => 'Dog(id: $id, name: $name, age: $age)';

  // factory Dog.fromMap(Map<String, dynamic> map) {
  //   return Dog(
  //     id: map['id']?.toInt(),
  //     name: map['name'],
  //     age: map['age']?.toInt(),
  //   );
  // }

  // //factory Dog.toJson

//  factory Dog.fromJson(String source) => Dog.fromMap(json.decode(source));

  // factory Dog.fromMap(Map<String, dynamic> map) {
  //   return Dog(
  //     id: map['id'] != null ? late int.fromMap(map['id']) : null,
  //     name: map['name'] != null ? late String.fromMap(map['name']) : null,
  //     age: map['age'] != null ? late int.fromMap(map['age']) : null,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Dog.fromJson(String source) => Dog.fromMap(json.decode(source));
}
