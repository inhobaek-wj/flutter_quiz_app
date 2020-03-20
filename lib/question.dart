import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String q; // sinde Question is immutable.

  Question(this.q);

  @override
  Widget build(BuildContext context) {

    return Text(q);
  }

}
