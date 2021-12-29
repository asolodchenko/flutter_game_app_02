import 'dart:math';

import 'package:flame/components.dart';

class Enemy extends SpriteComponent with HasGameRef {
  final double _speed = 100;
  final _random = Random();

  Enemy()
      : super(
          size: Vector2.all(64),
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load('enemy.png');
    position = Vector2(_random.nextDouble() * gameRef.size.x, 0);
  }

  @override
  void update(double dt) {
    position += Vector2(0, 1) * _speed * dt;

    if (position.y > gameRef.size.y) {
      removeFromParent();
    }
  }
}
