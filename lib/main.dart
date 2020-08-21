import 'package:flutter/material.dart';

import 'inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF111639),
        accentColor: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF111639),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        )

      ),
      home: InputPage(),
    );
  }
}

