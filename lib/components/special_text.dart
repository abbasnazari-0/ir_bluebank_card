import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialText extends StatelessWidget {
  const SpecialText(this.text, {super.key, this.color, this.size});

  final String text;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
          color: color ?? Colors.white,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
