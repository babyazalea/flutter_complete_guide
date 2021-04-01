import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print('Answer chosen!');
    }

    var questions = [
      "What\'s is your favorite color?",
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The question!'),
          ElevatedButton(
            child: Text('Answer1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer2'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer3'),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
