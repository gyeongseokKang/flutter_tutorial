import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstWidget(),
    );
  }
}
class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TextField Sample'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            TextField(
            decoration: InputDecoration(
              labelText: 'I2를 입력하세요',
              border: OutlineInputBorder(),
            ),
          ),
            TextField(
              decoration: InputDecoration(
                labelText: '22를 입력하세요',
                border: OutlineInputBorder(),
              ),
            )
          ],
        )
    );
  }
}
