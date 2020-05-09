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
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫 페이지"),
      ),
      body: Center(
        child: GridView.count(crossAxisCount: 3,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(10.0),
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      )
  ,
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2번 페이지"),
      ),
      body: Center(
          child : RaisedButton(
            child: Text('이전 Page'),
            onPressed: (){
              Navigator.pop(context);
            },
          )
      ),
    );
  }
}
