import 'package:flutter/material.dart';
import 'package:iDice/Singledice.dart';
import 'package:iDice/dualdice.dart';
import 'package:iDice/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/Single': (context) => DicePage1(),
        '/Dual': (context) => DicePage2(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Dicey',
    );
  }
}
