import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lab 7'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(int.parse("#0D5157 ".replaceAll('#', '0xff'))),
      ),
      body: Container(
        padding: new EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My App!',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(int.parse("#F7931D ".replaceAll('#', '0xff')))),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'My name is Natasya Meidiana Akhda, and I am final year student of computer science in University of Indonesia.',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(int.parse("#F7931D ".replaceAll('#', '0xff')))),
            ),
            SizedBox(
              height: 140,
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 90),
            ),
            SizedBox(
              height: 130,
            ),
            SizedBox(
                width: 163,
                height: 60,
                child: FlatButton(
                  onPressed: _incrementCounter,
                  color: Color(int.parse("#0E3033".replaceAll('#', '0xff'))),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CLICK ME!',
                    style: TextStyle(fontSize: 14),
                  ),
                ))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}