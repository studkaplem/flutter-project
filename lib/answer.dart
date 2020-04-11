import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function selectHandler; // wir geben eine Funktion übergeben 
final String answerText;

Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.lightBlue[200],
        child: Text(answerText),
         onPressed: selectHandler, // wird nicht aufgerufen sonder übermittelt!
      ),
    );
  }
}
