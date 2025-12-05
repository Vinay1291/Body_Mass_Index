import 'dart:math';

class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI () {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25){
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25){
      return 'Maintaining a healthy weight \nis key to well-being';
    } else if (_bmi > 18.5) {
      return 'Normal Body Weight. \nGood Job!';
    } else {
      return 'Being underweight can \nimpact health';
    }
  }

}