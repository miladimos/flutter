import 'package:flutter/material.dart';

class ChatsSettingPage extends StatefulWidget {
  const ChatsSettingPage({Key? key}) : super(key: key);

  @override
  _ChatsSettingPageState createState() => _ChatsSettingPageState();
}

class _ChatsSettingPageState extends State<ChatsSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
    );
  }
}
