import 'package:bmi_calculator/screens/InputPage.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF17181a),
        scaffoldBackgroundColor: Color(0xFF17181a),
      ),
      home: InputPage(),
    );
  }
}
