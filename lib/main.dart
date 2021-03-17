import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion(){
    if(_questionIndex==1){
       _questionIndex=-1;
    }
    setState(() {
      _questionIndex+=1;
    });
   // print(_questionIndex);
  //  print("g a l al  ");
  }

  final _question = [
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
              width: double.infinity,
              child: Column(
                children: [
                  Question(_question[_questionIndex]),
                  Answer(answerQuestion, "Red"),
                  Answer(answerQuestion, "Green"),
                  Answer(answerQuestion, "Blue"),
                  Answer(answerQuestion, "Black"),
                ],
              ),
            )));
  }
}
