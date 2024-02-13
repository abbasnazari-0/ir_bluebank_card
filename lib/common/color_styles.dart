import 'package:flutter/material.dart';
import 'package:ir_bank_card/common/color_concepts.dart';

class ColorStyle {
  static CardColorConcepts blackColor = CardColorConcepts(
      backBackgroundColor: const Color(0xFFe5e5e5),
      backTextColor: Colors.black,
      frontTextColor: const Color(0xFF010101),
      fronBackgroundColor: const Color(0xFF010101));

  static CardColorConcepts redColor = CardColorConcepts(
      frontTextColor: const Color(0xffffffff),
      backBackgroundColor: const Color(0xFFffcccc),
      backTextColor: const Color(0xFF010101),
      fronBackgroundColor: Colors.redAccent);

  static CardColorConcepts blueColor = CardColorConcepts(
      backBackgroundColor: const Color(0xFFcce9ff),
      frontTextColor: Colors.white,
      backTextColor: const Color(0xFF010101),
      fronBackgroundColor: const Color(0xFF0190ff));

  static CardColorConcepts greenColor = CardColorConcepts(
      backBackgroundColor: const Color(0xFFade8c9),
      backTextColor: Colors.black,
      fronBackgroundColor: const Color(0xFF036c3c),
      frontTextColor: Colors.black);

  static CardColorConcepts yellowColor = CardColorConcepts(
      frontTextColor: Colors.black,
      backBackgroundColor: const Color(0xFFffd051),
      backTextColor: Colors.black,
      fronBackgroundColor: const Color(0xFFffd052));

  static CardColorConcepts purpleColor = CardColorConcepts(
      frontTextColor: Colors.white,
      backBackgroundColor: const Color(0xFF682944),
      backTextColor: const Color(0xFFd2c5a4),
      fronBackgroundColor: const Color(0xFF682944));

  static CardColorConcepts creamColor = CardColorConcepts(
      frontTextColor: Colors.white,
      backBackgroundColor: const Color(0xFFcfbdbf),
      backTextColor: Colors.black,
      fronBackgroundColor: const Color(0xFFcfab7c));

  CardColorConcepts appColor = blackColor; //default color

  List<CardColorConcepts> get colorList => [
        blackColor,
        redColor,
        blueColor,
        greenColor,
        yellowColor,
        purpleColor,
        creamColor
      ];
  setColor(CardColorConcepts color) {
    appColor = color;
  }

  int selectedIndex = 0;
}
