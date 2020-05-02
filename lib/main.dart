import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() => runApp(
      MaterialApp(
        home: HomeScreen(),
      ),
    );
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomeScreen(),
    );
  }
}