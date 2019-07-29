import 'package:flutter/material.dart';
import 'package:snake/models/board.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Board(),
        ),
      ),
    );
  }
}