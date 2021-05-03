import 'package:flutter/material.dart';
import 'package:helloflutter/answer.dart';
import 'package:helloflutter/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Cat', 'Dog', 'Rabbit', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Max']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList()
          ],
        ),
      ),
    );
  }
}
