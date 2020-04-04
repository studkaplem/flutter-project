import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp()); //gleiche bedeutung wie oben
// we can use that any function with only one expression

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favourite color?", 
        "answers": ["Black","Red","Green","White"],
      },

      {
        "questionText": "What's your favourite animal?", 
        "answers": ["Rabbit","Snake","Elephant","Tiger"],
      },

      {
        "questionText": "Who's your favorite instrutor?", 
        "answers": ["Emre","Max","Rubi","Escobar"],
      }
      ,
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ), // AppBar
        body: Column(
          children: [
            Question(
              questions[_questionsIndex]["questionText"],
            ), //Question(Konstruktor) statt Text; also wors with questions[0] or questions.elementAt(0)
            ...(questions[_questionsIndex]["answers"] as List<String>).map((answer) {
              return Answer(_answerQuestion,answer);
            }).toList()
          ],
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }
}
