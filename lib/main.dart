import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("side project for tmax"),
    ),
      body: Column(
        children: <Widget>[
          Container(
              color: Colors.red,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0)
          ),
          Container(
              color: Colors.green,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0)
          ),
          Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0)
          ),
        ],
      )


    );
  }
}
  
