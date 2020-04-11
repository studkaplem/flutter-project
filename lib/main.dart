import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import "./quiz.dart";
import "./result.dart";

/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 
  final _questions = const [
    {
      "questionText": "What is your favourite Color?",
      "answers": [
        {"text": "blue", "score": 4},
        {"text": "green", "score": 1},
        {"text": "yellow", "score": 9},
        {"text": "red", "score": 5}
      ]
    },
    {
      "questionText": "What is your favourite Animal?",
      "answers": [
        {"text": "Tiger", "score": 1},
        {"text": "Rat", "score": 10},
        {"text": "Dog", "score": 4},
        {"text": "Cat", "score": 3}
      ]
    },
    {
      "questionText": "What is your favourite Sport?",
      "answers": [
        {"text": "Basketball", "score": 2},
        {"text": "Soccer", "score": 2},
        {"text": "Baseball", "score": 10},
        {"text": "Football", "score": 7}
      ]
    }
  ];

  var _questionsIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
_totalScore += score;

    setState(() {
      _questionsIndex += 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[200],
          title: Text("My first App"),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionsIndex: _questionsIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
