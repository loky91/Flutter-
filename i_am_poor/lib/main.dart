import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Image(
          image: AssetImage('images/bitcoin.png'),
        )),
      ),
    ),
  );
}
