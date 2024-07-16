// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPages extends StatefulWidget {
  const CounterPages({super.key});

  @override
  State<CounterPages> createState() => _CounterPagesState();
}

class _CounterPagesState extends State<CounterPages> {
//Variables
  int _counter = 0;

  //methods
  void _incrementCounter() {
    setState(() {
      // This call to setState
      _counter++;
    });
  }

  //ui (user interface)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //message
          children: [
            Text('You push the buttom this many times:'),
            //counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            //Button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            )
          ],
        ),
      ),
    );
  }
}
