import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 1;
  int dice2 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$dice1.png'),
                onPressed: () {
                  setState(() {
                    dice1 = Random().nextInt(6) + 1;
                  });
                }),
          ),
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$dice2.png'),
                onPressed: () {
                  setState(() {
                    dice2 = Random().nextInt(6) + 1;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
