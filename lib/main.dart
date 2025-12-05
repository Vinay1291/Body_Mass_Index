import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  static const Color myPrimaryColor = Color(0xFF090C22);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: myPrimaryColor,
        appBarTheme: AppBarTheme(backgroundColor: myPrimaryColor,),
        scaffoldBackgroundColor: myPrimaryColor
      ),
      home: InputPage(),
    );
  }
}

