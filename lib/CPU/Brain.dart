import 'dart:core';
import 'dart:math';
import 'package:bmi_calculator/home.dart';

class calculateBrain {
  calculateBrain(
      {required this.height, required this.weight, required this.gender});
  late int height;
  late int weight;
  late Gender gender;
  late double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi > 30) {
      return 'Obese';
    }
    if (_bmi > 25 && _bmi < 29.9) {
      return 'Overweight';
    }
    if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal';
    }
    if (_bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'Error!!';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'You are Big Fat PIG';
    }
    if (_bmi > 25 && _bmi < 29.9 && gender == Gender.female) {
      return ' “Ewww, I feel so fat.” ';
    }
    if (_bmi > 25 && _bmi < 29.9 && gender == Gender.male) {
      return ' “It is okay to be fat.” ';
    }
    if (_bmi > 18.5 && _bmi < 25) {
      return 'You are having a great health';
    }
    if (_bmi < 18.5) {
      return 'You are a thin gay. Be Straight eat something!!';
    } else {
      return 'Error!!';
    }
  }
}
