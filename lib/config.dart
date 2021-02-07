import 'package:flutter/material.dart';

import 'inputs_page.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFA0E21), //change app bar colour only
        scaffoldBackgroundColor: Color(0xFFA0E21),
      ), //change complete bg
      home: InputPage(),
    );
  }
}
