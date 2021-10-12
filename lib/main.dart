import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/Result.dart';
import 'Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\s your favourite animal?',
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 3},
        {'text': 'bat', 'score': 10},
        {'text': 'horse', 'score': 6}
      ]
    },
    {
      'questionText': 'What\s your favourite food?',
      'answers': [
        {'text': 'cheese', 'score': 7},
        {'text': 'burger', 'score': 1},
        {'text': 'chat Patey', 'score': 5},
        {'text': 'salad', 'score': 9}
      ]
    },
    {
      'questionText': 'who\s your favourite instructor?',
      'answers': [
        {'text': 'Florian', 'score': 3},
        {'text': 'Phillip', 'score': 1},
        {'text': 'Rahul', 'score': 7},
        {'text': 'Mitch', 'score': 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzy'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
