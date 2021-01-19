import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function optionFunction;
  final String answerText;

  Answer(this.optionFunction, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: optionFunction,
      ),
    );
  }
}
