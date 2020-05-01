import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyFirstWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      )
    );
  }
}
