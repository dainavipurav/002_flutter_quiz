import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  const StyledText(this.text, {super.key, this.fontSize = 24});

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}
