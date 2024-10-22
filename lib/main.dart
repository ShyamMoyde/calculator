import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calcy());
}

class Calcy extends StatelessWidget {
  const Calcy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
