import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6efc7),
      appBar: AppBar(
        title: Center(
          child: Text('Home',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
              )),
        ),
        backgroundColor: Color(0xff184d47),
      ),
      body: Center(
        child: Column(
          children: [
            Divider(
              color: Color(0xff184d47),
              thickness: 10,
            ),
            Expanded(
              child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          'Single Dice',
                          style: TextStyle(
                            letterSpacing: 5,
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Expanded(child: Image.asset('images/back1.png')),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Single');
                  }),
            ),
            Divider(
              color: Color(0xff184d47),
              thickness: 10,
            ),
            Expanded(
              child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          'Dual Dice',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 5,
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Expanded(child: Image.asset('images/back2.png')),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Dual');
                  }),
            ),
            Divider(
              color: Color(0xff184d47),
              thickness: 10,
            ),
          ],
        ),
      ),
    );
  }
}
