import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // home is core widget which flutter brings out of the screen.
    return MaterialApp(home: Text('Hello, Dart!'),);
  }

}
