import 'package:flutter/material.dart';
import 'package:helloflutter/quiz.dart';
import 'package:helloflutter/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Whos\'s author of the Pascal programming language?',
      'answers': [
        {'text': 'Nicholas Wirthman', 'score': 10},
        {'text': 'Blez Paskal', 'score': 0},
        {'text': 'Bill Gates', 'score': 0},
        {'text': 'Elon Musk', 'score': 0},
      ]
    },
    {
      'questionText': 'Can you change a const variable?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 5},
      ]
    },
    {
      'questionText': 'In which programming language this app was written?',
      'answers': [
        {'text': 'Dart', 'score': 10},
        {'text': 'C#', 'score': 0},
        {'text': 'Go', 'score': 0},
        {'text': 'Swift', 'score': 0},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restartQuizz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _restartQuizz),
      ),
    );
  }
}
