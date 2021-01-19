import 'package:flutter/material.dart';
import 'package:Quiz_App/answer.dart';
import 'package:Quiz_App/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerPicked;
  final int questionIndex;

  Quiz({
    @required this.question,
    @required this.answerPicked,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['question']),
        ...(question[questionIndex]['options'] as List<Map<String, Object>>)
            .map((option) {
          return Answer(() => answerPicked(option['score']), option['text']);
        }).toList(),
      ],
    );
  }
}
