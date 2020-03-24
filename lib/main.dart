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
  String _message = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _changeMessage),
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body : Text(_message,  style: TextStyle(fontSize: 30),));
  }

  void _changeMessage() {
    setState(() {
      _message = "헬로 월드";
    });
  }
}


