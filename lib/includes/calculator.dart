import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator {
  Calculator({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi > 25) {
      return 'You have high than normal body weight.Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight.Good job';
    } else {
      return 'You have lower than normal body weight.You can eat a bit more';
    }
  }
}
