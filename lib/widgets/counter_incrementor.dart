import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/button.dart';

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MyButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}
