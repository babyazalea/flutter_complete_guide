import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _questions = const [
    {
      'questionText': "What\'s is your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      "answers": [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Cow', 'score': 3},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      "answers": [
        {'text': '1', 'score': 1},
        {'text': '2', 'score': 2},
        {'text': '3', 'score': 3},
        {'text': '4', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
