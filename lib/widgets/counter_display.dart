import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: TextStyle(
        fontSize: 64.0,
      ),
    );
  }
}
