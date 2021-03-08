import 'package:flutter/material.dart';
import 'package:weight_tracker/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weight Tracker',
      home: Wrapper(),
    );
  }
}
