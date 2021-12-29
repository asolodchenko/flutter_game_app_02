import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'components/components.dart';

class MyGame extends FlameGame with PanDetector {
  Vector2? _pointerStartPosition;

  final player = Player();
  final enemyManager = EnemyManager(timeRange: 1);

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(player);
    add(enemyManager);
    overlays.add('overlay_test');
  }

  @override
  void onPanStart(DragStartInfo info) {
    _pointerStartPosition = info.eventPosition.global;
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    final pointerCurrentPosition = info.eventPosition.global;
    var delta = pointerCurrentPosition - _pointerStartPosition!;
    player.setMoveDirection(delta);
  }

  @override
  void onPanEnd(DragEndInfo info) {
    _pointerStartPosition = null;
    player.setMoveDirection(Vector2.zero());
  }

  @override
  void onPanCancel() {
    _pointerStartPosition = null;
    player.setMoveDirection(Vector2.zero());
  }
}
