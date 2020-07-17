import 'package:flutter/material.dart';
import 'package:iDice/dualdice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I-DICES',
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('DUA DICE'),
        ),
        body: DicePage2(),
      ),
    );
  }
}
