import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('MAGIC BALL'),
          backgroundColor: Colors.blue,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Random number generator
  static int getRandom() => Random().nextInt(5) + 1;

// initial state
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => setState(() => number = getRandom()),
        child: Image.asset("images/ball$number.png"),
      ),
    );
  }
}
