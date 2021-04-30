import 'package:calculator_app/Layout_dark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Layout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
