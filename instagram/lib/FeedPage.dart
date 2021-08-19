import 'package:flutter/material.dart';
import 'constants.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
