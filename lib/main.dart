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
          title: const Text('ClipOval Sample'),
        ),
        body:
        ClipOval(
            clipper: MyClipper(),
            child : Image.asset('images/flutter_logo2.png')
        )
    );
  }
}

class MyClipper extends CustomClipper<Rect>{

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {

  }
}