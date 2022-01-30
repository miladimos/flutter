import 'dart:ui';
import 'package:flutter/material.dart' show Colors;

import 'package:flame/game.dart';

class GameController extends FlameGame {
  initializing() async {

  }

  GameController() {
    initializing();
  }

  @override
  Future<void>? onLoad() {
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    Paint backgroundPaint = Paint()..color = Color.fromARGB(1, 255, 1, 5);
  }

}