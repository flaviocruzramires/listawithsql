import 'package:flutter/material.dart';

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

    // DoguinhosJson lista = DoguinhosJson.fromJson(listaDog.toString())

    // lista = Dog().getAllDog;

    Future<List<Map<String , dynamic>>> listaDog = Dog().getAllDogListaMapString;

   // listaDog.toMap();

    // Widget getTextWidgetsFromListaDogs() {
    //   List<Widget> list = <Widget>[];
    //   for (var doguinho in listaDog.['name']) {
    //     list.add(Text(doguinho.name!));
    //   }
    //   return Row(children: list);
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
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
                        'Nome ${listaDog.[index].name!} ',
                        
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
          ),
        ),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       // for (var doginho in lista){
      //       //   Text(doginho.name),
      //       // },
      //       // Column(children: [

      //       // listaDog.forEach((k,v) => Text(objeto.name!))
      //       // ]),
      //       // Column(children: [
      //       //   for (var objeto in listaDog.['name']) Text(objeto.name!)
      //       // ]),
      //       getTextWidgetsFromListaDogs(listdogs: listaDog),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
