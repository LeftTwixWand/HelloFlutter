import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuizz;

  Result(this.resultScore, this.restartQuizz);

  String get resultText =>
      "You did it!!! You score is: " + resultScore.toString();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: restartQuizz,
            child: Text(
              'Restart Quizz!',
            ),
          ),
        ],
      ),
    );
  }
}
