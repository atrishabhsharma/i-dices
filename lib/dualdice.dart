import 'package:flutter/material.dart';

class DicePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                debugPrint('lol');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                debugPrint('lol');
              },
            ),
          ),
        ],
      ),
    );
  }
}
