import 'package:flutter/material.dart';

class SpecialFaText extends StatelessWidget {
  const SpecialFaText(this.text,
      {super.key, this.color, this.size, this.fontWeight});

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'yekan',
          color: color ?? Colors.white,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}
