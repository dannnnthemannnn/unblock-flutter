import 'dart:math' as Math;

import 'package:flutter/material.dart';

class ColorsUtil {

  static const List<Color> colors = [
    Colors.deepPurple,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.teal,
  ];

  static Math.Random randomGenerator = Math.Random();

  static Color getRandomColor() {
    return colors[randomGenerator.nextInt(colors.length)];
  }
}