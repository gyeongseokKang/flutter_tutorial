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
        child: RaisedButton(
          child: Text('다음 Page'),
          onPressed: () async{
            final person = Person('박보검',20);
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SecondPage(person:person)),
            );
            print(result);
          },

        ),
      )
      ,
    );
  }
}



class SecondPage extends StatelessWidget{
  final Person person;
  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2번 페이지"),
      ),
      body: Center(
          child : RaisedButton(
            child: Text('넘어온 이름 : '+ person.name),
            onPressed: (){
              Navigator.pop(context,'데아터 돌려줌');
            },
          ),
      ),
    );
  }
}

class Person{
  String name;
  int age;
  Person(this.name, this.age);
}