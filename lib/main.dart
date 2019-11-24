import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/counter_display.dart';
import 'package:flutter_study/widgets/counter_incrementor.dart';

class HandlingGestures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  // This class is the configuration for the state. It holds the
  // values (in this case nothing) provided by the parent and used by the build
  // method of the State. Fields in a Widget subclass are always marked "final".
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If you change _counter without calling
      // setState(), then the build method won't be called again,
      // and so nothing would appear to happen.
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterDisplay(counter: _counter),
        CounterIncrementor(onPressed: _increment)
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Material Components',
    home: HandlingGestures(),
  ));
}
