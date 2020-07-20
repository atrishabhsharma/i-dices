import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6efc7),
      appBar: AppBar(
        title: Center(
          child: Text('Home'),
        ),
        backgroundColor: Color(0xff184d47),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                child: Center(child: Text('Single Dice')),
                onPressed: () {
                  Navigator.pushNamed(context, '/Single');
                }),
            RaisedButton(
                child: Center(child: Text('Dual Dice')),
                onPressed: () {
                  Navigator.pushNamed(context, '/Dual');
                }),
          ],
        ),
      ),
    );
  }
}
