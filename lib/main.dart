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
      routes: {
        '/first' : (context) => FirstPage(),
        '/second' : (context) => SecondPage(),
      },
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
        child: RaisedButton(
          child: Text('다음 Page'),
          onPressed: () async{
            final result = await Navigator.pushNamed(context, '/second');
            print(result);
          },

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
            child: Text(' 이전 페이지 '),
            onPressed: (){
              Navigator.pop(context,'데아터 돌려줌');
            },
          ),
      ),
    );
  }
}