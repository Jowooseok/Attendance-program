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
      home: HelloWooseok('Hello World')
    );
  }
}

class HelloWooseok extends StatefulWidget {
  final String title;

  HelloWooseok(this.title);

  @override
  _HelloWooseokState createState() => _HelloWooseokState();
}

class _HelloWooseokState extends State<HelloWooseok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body : Text(widget.title,  style: TextStyle(fontSize: 30),));
  }
}


