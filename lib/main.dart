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
      home: Scaffold(
        appBar: AppBar(
          title: Text('헬로 월드'),
        ),
          body: Text('헬로 월드',
          style: TextStyle(fontSize: 30),))
    );
  }
}

class HelloWooseok extends StatefulWidget {
  @override
  _HelloWooseokState createState() => _HelloWooseokState();
}

class _HelloWooseokState extends State<HelloWooseok> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


