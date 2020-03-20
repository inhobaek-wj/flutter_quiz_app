import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String q; // sinde Question is immutable.

  Question(this.q);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        q,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center
      ),
    );
  }

}
