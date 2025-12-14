import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricster',
      debugShowCheckedModeBanner: false,
      home: const MainScreen()
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, Flutter',
      // key: Key('mainText'),
      // textAlign: TextAlign.center,
      // style: TextStyle(fontSize: 20),
    );
  }
}
