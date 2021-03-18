import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz.dart';
import 'package:quiz_app/result.dart';
import 'questions.dart';
import 'answer.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _restartApp(){
    setState(() {
      _questionIndex = 0;
    });

  }
  void answerQuestion() {
    // if (_questionIndex == 2) {
    //   _questionIndex = -1;
    // }
    setState(() {
      _questionIndex += 1;
    });
    // print(_questionIndex);
    //  print("g a l al  ");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color ? ',
      'answers': ['black', 'green', 'blue', 'yellow']
    },
    {
      'questionText': 'What\'s your favorite animal ? ',
      'answers': ['lion', 'tiger', 'cat', 'rabbit']
    },
    {
      'questionText': 'What\'s your favorite name ? ',
      'answers': ['mohamed', 'galal', 'anwer', 'ahmed']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            body: Container(
              width: double.infinity,
              child: _questionIndex < _question.length
                  ? Quiz(_question, _questionIndex, answerQuestion)
                  :Result(_restartApp),
            )));
  }
}
