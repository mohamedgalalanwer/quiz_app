import 'package:flutter/material.dart';
import 'questions.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex=0;

  final _question=[
    'What\'s your favorite color ? ',
    'What\'s your favorite animal ? '
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
        child: Question(_question[1]),
        ),
      ),
    );
  }
}
