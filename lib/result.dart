import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and nature';
    } else if (resultScore <= 12) {
      resultText = "more closer tree";
    } else if (resultScore <= 16) {
      resultText = "you are good people";
    } else {
      resultText = "Vador!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Quiz'),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
