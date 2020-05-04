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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      lowerBound: 1,
      upperBound: 2,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedWidget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTransition(width: _controller),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => _controller.stop(),
                  child: Text("Stop"),
                ),
                Padding(padding: const EdgeInsets.all(8.0)),
                RaisedButton(
                  onPressed: () => _controller.repeat(reverse: true),
                  child: Text("Go"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);

  Animation<double> get _width => listenable;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => null,
      borderSide: BorderSide(
        width: _width.value,
      ),
      child: Text("target widget"),
    );
  }
}
