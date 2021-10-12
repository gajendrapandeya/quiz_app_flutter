import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
