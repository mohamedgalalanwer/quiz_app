import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText']),
        // Here ... takes the shape of the object that it contains
        // convert to list to use object map
        // answer to get content of _question
        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
