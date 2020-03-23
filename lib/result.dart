import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[

          Text(
            'You are done!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: this.resetHandler
          ),

        ],
    ));
  }

}
