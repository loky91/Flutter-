import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  void changeBallNumber(){
    setState(() {
     ballNumber=Random().nextInt(4)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
backgroundColor: Colors.blue,
appBar: AppBar(
title: Center(
    child: Text('Ask Me Anything'),
),
  backgroundColor: Colors.indigo,
),
  body: Center(
child: FlatButton(
  onPressed: (){
    print('I am clicked');
    changeBallNumber();
  },

  child:   Image(
  image: AssetImage('images/ball$ballNumber.png'),
  ),
),
  ),


),
    );
  }
}
