import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game.dart';
import 'overlays/overlays.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  MyGame myGame = MyGame();

  runApp(
    GameWidget(
      game: myGame,
      overlayBuilderMap: overlayBuilderMap,
    ),
  );
}
