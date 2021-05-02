import 'package:calculator_app/Layout_dark.dart';
import 'package:calculator_app/Two_degree/two_degree_1.dart';
import 'package:calculator_app/Two_degree/two_degree_2.dart';
import 'package:calculator_app/Two_degree/two_degree_result.dart';
import 'package:flutter/material.dart';

import 'Layout_light.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/dark',
      routes: {
        '/': (context) => Layout_light(),
        '/dark': (context) => Layout_dark(),
        '/degree_two':(context) => degree_two(),
        '/degree_two_two':(context) => degree_two_one(),
        '/two_degree_result':(context) => two_degree_result(),

      },

    );
  }
}
