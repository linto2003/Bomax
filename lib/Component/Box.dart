import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({required this.boxcolor, this.boxChild, required this.OnPress});
  final Color boxcolor;
  final Widget?
      boxChild; //? - means the widget can also be null i.e nullable widget
  final void Function() OnPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: Container(
        child: boxChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: boxcolor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
