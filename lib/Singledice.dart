import 'package:flutter/material.dart';
import 'dart:math';

class DicePage1 extends StatefulWidget {
  @override
  _DicePage1State createState() => _DicePage1State();
}

class _DicePage1State extends State<DicePage1> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeebb4d),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Color(0xff184d47),
        title: Center(
            child: Text('Single Dice',
                style: TextStyle(
                  letterSpacing: 5,
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ))),
        titleSpacing: 20,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$dice.png'),
                onPressed: () {
                  setState(() {
                    dice = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
