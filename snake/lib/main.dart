import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/services.dart';
import 'package:snake/app/game/game_controller.dart';
import 'package:flutter/material.dart';

void main() async{

  await Flame.device.fullScreen();
  await Flame.device.setOrientation(DeviceOrientation.portraitUp);

  GameController gameController = GameController();
  runApp(GameWidget(game: gameController));
}
