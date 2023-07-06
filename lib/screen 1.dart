import 'package:bmi_calculator/Component/Box.dart';
import 'package:bmi_calculator/Component/bottomButton.dart';
import 'package:bmi_calculator/Component/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Screen1 extends StatelessWidget {
  Screen1({required this.result, required this.calc, required this.interpret});
  late String result;
  late String calc;
  late String interpret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.inactiveGray,
          title: Center(child: Text("BMI CALCULATOR")),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Your Result',
                    style: kTitlestyle,
                  ),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Box(
                    boxcolor: inactiveboxcolor,
                    OnPress: () {},
                    boxChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            result,
                            style: kResultText,
                          ),
                        ),
                        Center(
                          child: Text(
                            calc,
                            style: kTitlestyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: Text(
                            interpret,
                            style: kFontstyle,
                          ),
                        )
                      ],
                    ),
                  )),
              bottomButton(
                  Screen: () {
                    Navigator.pop(context);
                  },
                  bottomText: 'RE-CALCULATE YOUR BMI')
            ],
          ),
        ));
  }
}
