import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Michigan State University Widget'),
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(10),
        child: const Text('Combo X Change Counters'),
        color: Colors.green,
        height: 100,
        width: 100,
      ),
    ));
  }
}