import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/game_provider.dart';

class CandyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (ctx, index) {
        return GestureDetector(
          onTap: () => gameProvider.selectCandy(index),
          child: Container(
            margin: const EdgeInsets.all(2.0),
            color: gameProvider.getCandyColor(index),
          ),
        );
      },
      itemCount: gameProvider.candies.length,
    );
  }
}
