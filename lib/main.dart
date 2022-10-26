import 'package:flutter/material.dart';
import 'package:sqflite_app/database_helper.dart';
//import 'package:sqflite_app/dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    // Dog newdog = Dog(id: 2, name: 'Hulaaaa', age: 3);
    // newdog.incluirDog();

    incluirDogs() async {
      Map<String, dynamic> dog1 = {
        DatabaseHelper.columnName: 'May',
        DatabaseHelper.columnAge: '14'
      };
      Map<String, dynamic> dog2 = {
        DatabaseHelper.columnName: 'Tita',
        DatabaseHelper.columnAge: '9'
      };
      Map<String, dynamic> dog3 = {
        DatabaseHelper.columnName: 'Kenai',
        DatabaseHelper.columnAge: '6'
      };
      Map<String, dynamic> dog4 = {
        DatabaseHelper.columnName: 'Yoko',
        DatabaseHelper.columnAge: '5'
      };
      Map<String, dynamic> dog5 = {
        DatabaseHelper.columnName: 'Maria',
        DatabaseHelper.columnAge: '3'
      };
      Map<String, dynamic> dog6 = {
        DatabaseHelper.columnName: 'Hula',
        DatabaseHelper.columnAge: '3'
      };

      dbHelper.insert(dog1);
      dbHelper.insert(dog2);
      dbHelper.insert(dog3);
      dbHelper.insert(dog4);
      dbHelper.insert(dog5);
      dbHelper.insert(dog6);
    }

    getDadosDogs() async {
      // incluirDogs();
      return await dbHelper.obterListMapDog();
    }

    // ;

    buildForm() {
      //Future<List<Dog>> listaDog = getDadosDogs();
      return Form(
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: getDadosDogs(),
              builder: (context, snapshot) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 3,
                          color: Colors.greenAccent,
                          child: ListTile(
                            title:
                                //getTextWidgetsFromListaDogs(),
                                Text(
                              'Nome: ${snapshot.data[index]['name']} ',
                            ),
                            leading: const Icon(
                              Icons.payment,
                              color: Colors.white,
                            ),
                            selected: true,
                            tileColor: Colors.grey,
                            onTap: () {
                              const SnackBar(content: Text('Marcar'));
                            },
                          ),
                        );
                      },
                    ),
                  ],
                );
              }),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildForm(),
    );
  }
}
