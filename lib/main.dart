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
  int rightDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  leftDiceNumber = 2;
                  print('left button pressed');
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  rightDiceNumber = 2;
                  print('right button pressed');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//  int leftDiceNumber = 1;
//  int rightDiceNumber = 4;
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              child: Image.asset('images/dice$leftDiceNumber.png'),
//              onPressed: () {
//                print('left button pressed');
//              },
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              child: Image.asset('images/dice$rightDiceNumber.png'),
//              onPressed: () {
//                print('right button pressed');
//              },
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
