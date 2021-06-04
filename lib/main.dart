import 'dart.html';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "Assets/netflix big logo.png",
            height: 50,
          ),
        ),
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keys,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
