import 'package:flutter/material.dart';
import 'dart:math';

class DicePage2 extends StatefulWidget {
  @override
  _DicePage2State createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int rightDice = 1;
  int leftDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff96bb7c),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Color(0xff184d47),
        title: Center(
          child: Text('Dual Dice',
              style: TextStyle(
                letterSpacing: 5,
                fontFamily: 'Pacifico',
                fontSize: 30,
              )),
        ),
        titleSpacing: 20,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDice.png'),
                onPressed: () {
                  setState(() {
                    changeMe();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDice.png'),
                onPressed: () {
                  setState(() {
                    changeMe();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeMe() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }
}
