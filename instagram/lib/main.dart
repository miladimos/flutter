import 'package:flutter/material.dart';
import 'package:instagram/global_error_handler.dart';

import 'application.dart';

void main() {
  GlobalErrorHandler(child: InstagramApplication());
}

class InstagramApplication extends StatefulWidget {
  const InstagramApplication({Key? key}) : super(key: key);

  @override
  _InstagramApplicationState createState() => _InstagramApplicationState();
}

class _InstagramApplicationState extends State<InstagramApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black))
      ),
      home: Application(),
    );
  }
}
