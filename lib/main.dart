import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('DiceOrDie'),
        backgroundColor: Colors.indigo,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int _generateRandomInt() {
    return Random().nextInt(6) + 1;
  }

  void _rollDice() {
    setState(() {
      leftDiceNumber = _generateRandomInt();
      rightDiceNumber = _generateRandomInt();
    });
  }

  Widget _buildDiceButtons(int diceNumber) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/dice$diceNumber.png'),
        onPressed: () {
          _rollDice();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          _buildDiceButtons(leftDiceNumber),
          _buildDiceButtons(rightDiceNumber),
        ],
      ),
    );
  }
}
