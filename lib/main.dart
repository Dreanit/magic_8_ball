import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueAccent,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int buttonNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {
            setState(() {
              buttonNumber=Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$buttonNumber.png'),
        ),
      ),
    );
  }
}
