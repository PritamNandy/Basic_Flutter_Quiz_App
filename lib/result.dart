import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get checkResult {
    String resultText = 'You done it!';
    if (totalScore <= 8) {
      resultText = 'You are awesome & innocent person!';
    } else if (totalScore <= 15) {
      resultText = 'You are okey and good person!';
    } else {
      resultText = 'You are a bad person!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            checkResult,
            style: TextStyle(
              fontSize: 22,
              color: Colors.blue,
            ),
          ),
          FlatButton(
            color: Colors.blue,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
