import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // runApp builds the main widget and calls build() on it.
}

class MyApp extends StatelessWidget {

  // this method is automatically called by flutter.
  // it returns a so-colled "widget-tree" which tells Flutter what to draw onto the screen.
  @override
  Widget build(BuildContext context) { // Widget is the core UI building block.

    // home is core widget which flutter brings out of the screen, and it's named arg.
    return MaterialApp(home: Text('Hello, Dart!'),);
  }

}
