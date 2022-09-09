import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Color.fromARGB(255, 68, 62, 62),
        title: 'QT solutions',
        home: Task2());
  }
}
