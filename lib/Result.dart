import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get answerPhrase {
    String answerTxt;
    if (totalScore <= 8) {
      answerTxt = 'You\ re great :) :)';
    } else if (totalScore <= 12) {
      answerTxt = 'You seem to be likable';
    } else if (totalScore <= 16) {
      answerTxt = 'You\ re kind a strange!!';
    } else {
      answerTxt = 'You bloody mf. Fuck you :( :(';
    }
    return answerTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            answerPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Reset Quiz?',
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ))
        ],
      ),
    );
  }
}
