import 'package:flutter/material.dart';
import 'package:helloflutter/answer.dart';
import 'package:helloflutter/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(answer, answerQuestion))
            .toList()
      ],
    );
  }
}
