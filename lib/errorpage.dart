import 'package:bmi_calculator/Component/Box.dart';
import 'package:bmi_calculator/Component/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.inactiveGray,
        title: Center(child: Text("BMI CALCULATOR")),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      body: Box(
        boxcolor: Colors.red,
        OnPress: () {
          Navigator.pop(context);
        },
        boxChild: Text(
          'Please select a Gender!!',
          style: kTitlestyle,
        ),
      ),
    );
  }
}
