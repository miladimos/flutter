import 'package:flutter/material.dart';
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
  var darkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Application({darkThemeEnabled}),
    );
  }
}
