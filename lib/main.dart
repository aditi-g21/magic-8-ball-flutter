import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: MyBall(),
      )),
    );

class MyBall extends StatefulWidget {
  @override
  _MyBallState createState() => _MyBallState();
}

class _MyBallState extends State<MyBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ball = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}
