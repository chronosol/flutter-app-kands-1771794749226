import 'package:flutter/material.dart';
import '../utils/color_utils.dart';

class GameProvider with ChangeNotifier {
  List<Color> candies = List.generate(64, (index) => ColorUtils.randomColor());

  void selectCandy(int index) {
    // Handle candy selection logic
  }

  Color getCandyColor(int index) {
    return candies[index];
  }
}
