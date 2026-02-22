import 'dart:math';
import 'package:flutter/material.dart';

class ColorUtils {
  static Color randomColor() {
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple
    ];
    return colors[Random().nextInt(colors.length)];
  }
}
