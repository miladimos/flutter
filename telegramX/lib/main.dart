import 'package:flutter/material.dart';
import 'package:telegramX/app/bloC/app_themes.dart';
import 'package:telegramX/application.dart';

void main() {
  runApp(TelegramApplication());
}

class TelegramApplication extends StatefulWidget {
  const TelegramApplication({Key? key}) : super(key: key);

  @override
  _TelegramApplicationState createState() => _TelegramApplicationState();
}

class _TelegramApplicationState extends State<TelegramApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppThemes.darkTheme,
      theme: AppThemes.lightTheme,

      home: Application(),
    );
  }
}
