import 'package:bmi_calculator/Component/const.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {required this.text, required this.icon, required this.iconcolor});

  final text;
  final IconData icon;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconcolor,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kFontstyle,
        )
      ],
    );
  }
}
