import 'package:flutter/material.dart';

class BackupChatsSettingPage extends StatefulWidget {
  const BackupChatsSettingPage({Key? key}) : super(key: key);

  @override
  _BackupChatsSettingPageState createState() => _BackupChatsSettingPageState();
}

class _BackupChatsSettingPageState extends State<BackupChatsSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat backup"),
      ),
    );
  }
}
