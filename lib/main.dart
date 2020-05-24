import 'package:flutter/material.dart';
void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'CheckboxListTile Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('title : CheckBox'),
      subtitle: const Text('subtitle : click me!'),
      value: _ischecked,
      onChanged: (bool value) {
        setState(() {
          _ischecked = value;

        });
      },
      secondary: const Icon(Icons.home),
      activeColor: Colors.red,
      checkColor: Colors.black,
      isThreeLine: false,
      selected: _ischecked,
    );
  }
}
