import 'package:flutter/material.dart';
import 'inputs_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFFA0E21), //change app bar colour only
          scaffoldBackgroundColor: Color(0xFFA0E21)
      ),   //change complete bg
      home: InputPage(),
    );
  }
}

