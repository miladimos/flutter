import 'package:flutter/material.dart';

import 'FeedPage.dart';

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
      home: FeedPage(),
    );
  }
}
