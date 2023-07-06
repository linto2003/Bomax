import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Component/IconContent.dart';
import 'Component/Box.dart';
import 'Component/const.dart';
import 'screen 1.dart';
import 'Component/bottomButton.dart';
import 'CPU/Brain.dart';
import 'errorpage.dart';

enum Gender { male, female, none }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color malecolor = inactiveboxcolor;
  Color femalecolor = inactiveboxcolor;
  Color iconcolors = iconinactive;
  String? gender;

  Gender selected_gender = Gender.none;
  int height = 180;
  int weight = 50;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.inactiveGray,
        title: Center(child: Text("BMI CALCULATOR")),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    OnPress: () {
                      setState(() {
                        selected_gender = Gender.male;
                      });
                    },
                    boxcolor: selected_gender == Gender.male
                        ? activeboxcolor
                        : inactiveboxcolor,
                    boxChild: IconContent(
                      text: 'MALE',
                      icon: FontAwesomeIcons.mars,
                      iconcolor: selected_gender == Gender.male
                          ? iconactive
                          : iconinactive,
                    ),
                  ),
                ),
                Expanded(
                  child: Box(
                    OnPress: () {
                      setState(() {
                        selected_gender = Gender.female;
                      });
                    },
                    boxcolor: selected_gender == Gender.female
                        ? activeboxcolor
                        : inactiveboxcolor,
                    boxChild: IconContent(
                      text: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                      iconcolor: selected_gender == Gender.female
                          ? iconactive
                          : iconinactive,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              OnPress: () {
                setState(() {
                  selected_gender = Gender.female;
                });
              },
              boxcolor: inactiveboxcolor,
              boxChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kFontstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberstyle,
                      ),
                      Text('cm', style: kFontstyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      inactiveTrackColor: Colors.grey.shade500,
                      activeTrackColor: CupertinoDynamicColor.withBrightness(
                          color: Colors.white, darkColor: Colors.grey),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 20.0),
                      thumbColor: CupertinoColors.destructiveRed,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Colors.redAccent.shade700.withOpacity(0.3),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    OnPress: () {
                      setState(() {
                        selected_gender = Gender.female;
                      });
                    },
                    boxcolor: inactiveboxcolor,
                    boxChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kFontstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: CupertinoColors.destructiveRed,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                }),
                            SizedBox(
                              width: 15.0,
                            ),
                            FloatingActionButton(
                                backgroundColor: CupertinoColors.destructiveRed,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 20) {
                                      weight = weight - 1;
                                    }
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Box(
                    OnPress: () {
                      setState(() {
                        selected_gender = Gender.female;
                      });
                    },
                    boxcolor: inactiveboxcolor,
                    boxChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kFontstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: CupertinoColors.destructiveRed,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                }),
                            SizedBox(
                              width: 15.0,
                            ),
                            FloatingActionButton(
                                backgroundColor: CupertinoColors.destructiveRed,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age = age - 1;
                                    }
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
              Screen: () {
                calculateBrain call = calculateBrain(
                    height: height, weight: weight, gender: selected_gender);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if (selected_gender != Gender.none) {
                        return Screen1(
                            result: call.calculate(),
                            calc: call.result(),
                            interpret: call.getInterpretation());
                      } else {
                        return Error();
                      }
                    },
                  ),
                );
              },
              bottomText: 'CONFIRM'),
        ],
      ),
    );
  }
}
