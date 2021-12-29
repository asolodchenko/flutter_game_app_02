import 'package:flame/components.dart';

class Player extends SpriteComponent with HasGameRef {
  Vector2 _moveDirection = Vector2.zero();
  final double _speed = 400;

  Player()
      : super(
          size: Vector2.all(64),
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load('player.png');
    position = gameRef.size / 2;
  }

  @override
  void update(double dt) {
    position += _moveDirection.normalized() * _speed * dt;
    position.clamp(Vector2.zero() + size / 2, gameRef.size - size / 2);
  }

  void setMoveDirection(Vector2 newDirection) {
    _moveDirection = newDirection;
  }
}
