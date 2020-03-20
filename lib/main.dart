import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp()); // runApp builds the main widget and calls build() on it.
// }

void main() => runApp(MyApp());

// StatelessWidget can't tell Flutter that it should re-run build() upon such changes.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { // connection to State.
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> { // State is generic, so it needs class pointer. Connection fo Widget.

  var _questions = [
    'What is yout favorite color?',
    'What is your favorite animal?'
  ];
  int _questionIndex = 0;

  // this method is automatically called by flutter.
  // it returns a so-colled "widget-tree" which tells Flutter what to draw onto the screen.
  @override
  Widget build(BuildContext context) { // Widget is the core UI building block.

    void answerQuetion() {
      //setState() is a "trigger" that informs Flutter that it needs to re-run build() of the Widget.
      setState(() {
          _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }

    // home is core widget which flutter brings out of the screen, and it's named arg.
    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(children: <Widget>[
            Question(_questions[_questionIndex]),
            Answer(),
            Answer(),
            Answer(),
        ],),
    ),);
  }

}
