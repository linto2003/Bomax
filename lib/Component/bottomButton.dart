import 'package:flutter/material.dart';
import 'const.dart';
import 'package:flutter/cupertino.dart';

class bottomButton extends StatelessWidget {
  bottomButton({required this.Screen, required this.bottomText});
  final void Function() Screen;
  late final String bottomText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Screen,
      child: Container(
        child: Center(child: Text(bottomText, style: kFontstyle)),
        height: 50,
        color: CupertinoColors.destructiveRed,
      ),
    );
  }
}
