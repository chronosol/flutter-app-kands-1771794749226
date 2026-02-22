import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/candy_grid.dart';
import '../providers/game_provider.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GameProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('kands'),
        ),
        body: CandyGrid(),
      ),
    );
  }
}
