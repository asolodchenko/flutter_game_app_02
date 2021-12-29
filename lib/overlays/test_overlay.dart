import 'package:flutter/material.dart';

final overlayBuilderMap = {
  'overlay_test': (ctx, game) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Overlay widget',
        style: TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  },
};
