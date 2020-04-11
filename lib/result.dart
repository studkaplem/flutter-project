import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = "You are good and innocent!";
    } else if (resultScore <= 12) {
      resultText = "You are good!";
    } else if (resultScore <= 16) {
      resultText = "You are okay!";
    } else {
      resultText = "You are not in a good mood";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(color: Colors.lightBlue[200],textColor: Colors.white ,onPressed: resetHandler, child: Text("Quiz reset!"),),
      ],
    ));
  }
}
