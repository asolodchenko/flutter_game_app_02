import 'package:flame/components.dart';

import 'components.dart';

class EnemyManager extends Component {
  final double timeRange;

  late Timer _timer;

  EnemyManager({
    required this.timeRange,
  }) : super() {
    _timer = Timer(
      timeRange,
      autoStart: true,
      repeat: true,
      onTick: _generate,
    );
  }

  void _generate() {
    Enemy enemy = Enemy();
    add(enemy);
  }

  @override
  void onMount() {
    _timer.start();
  }

  @override
  void onRemove() {
    super.onRemove();
    _timer.stop();
  }

  @override
  void update(double dt) {
    _timer.update(dt);
  }
}
