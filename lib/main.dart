import 'package:Quiz_App/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What\'s your favourite color?',
      'options': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'Yellow', 'score': 2},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'options': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Tiger', 'score': 4},
        {'text': 'Lion', 'score': 6},
        {'text': 'Bird', 'score': 8},
        {'text': 'Cheetah', 'score': 10},
      ]
    },
    {
      'question': 'What\'s your favourite drink?',
      'options': [
        {'text': 'Tea', 'score': 1},
        {'text': 'Coffee', 'score': 2},
        {'text': 'CocaCola', 'score': 4},
        {'text': '7up', 'score': 6},
        {'text': 'Sprite', 'score': 8},
        {'text': 'Water', 'score': 10},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerPicked(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = (_questionIndex + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                question: _questions,
                answerPicked: _answerPicked,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
