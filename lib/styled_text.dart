import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  const StyledText(this.text, {super.key, this.fontSize = 24});

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}
