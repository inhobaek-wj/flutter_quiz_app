import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

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

  int _questionIndex = 0;

  // this method is automatically called by flutter.
  // it returns a so-colled "widget-tree" which tells Flutter what to draw onto the screen.
  @override
  Widget build(BuildContext context) { // Widget is the core UI building block.

    const _questions = [ // const is compile time constant value.
      {'questionText': 'What is yout favorite color?',
        'answers': ['Red', 'Blue', 'Black', 'Purple']
      },
      {'questionText': 'What is your favorite animal?',
        'answers': ['Pig', 'Dog', 'Rabbit', 'Lion']
      },
      {'questionText': 'What is your favorite movie?',
        'answers': ['Parasite', 'Super map', 'Bat man', 'Iron man']
      },
    ];

    void _resetQuiz() {
      setState(() {
          _questionIndex = 0;
      });
    }

    void answerHandler() {
      //setState() is a "trigger" that informs Flutter that it needs to re-run build() of the Widget.
      setState(() {
          _questionIndex = _questionIndex + 1;
      });
    }

    // home is core widget which flutter brings out of the screen, and it's named arg.
    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: _questionIndex < _questions.length ?
        Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          answerHandler: answerHandler,
        )
        : Result(_resetQuiz),
      ),
    );
  }

}
