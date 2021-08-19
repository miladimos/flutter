import 'package:flutter/material.dart';

import 'application.dart';
import 'ui/pages/feed/feed_page.dart';

void main() {
  runApp(InstagramApplication());
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
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black))
      ),
      home: Application(),
    );
  }
}
