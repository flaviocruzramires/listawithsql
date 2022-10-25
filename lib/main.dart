import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:sqflite_app/db_test.dart';
import 'package:sqflite_app/dog.dart';
import 'package:sqflite_app/dog_persistencia.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class DoguinhosJson {
  final List<String> nomeDoDog;
  DoguinhosJson({
    required this.nomeDoDog,
  });

  factory DoguinhosJson.fromJson(Map<String, dynamic> json) {
    return DoguinhosJson(
      nomeDoDog: json['name'],
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get i => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Dog newdog = Dog(id: 2, name: 'Hulaaaa', age: 3);
    newdog.incluirDog();

    Future<List<Dog>> getDadosDogs() {
      return Dog().getAllDog;
    }

    ;

    buildForm() {
      Future<List<Dog>> listaDog = getDadosDogs();
      return Form(
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: getDadosDogs(),
              builder: (context, snapshot) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 3,
                          color: Colors.greenAccent,
                          child: ListTile(
                            title:
                                //getTextWidgetsFromListaDogs(),
                                Text(
                              'Nome ${listaDog[index].name!} ',
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
