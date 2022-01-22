import 'package:flutter/material.dart';

class WallpaperChangeChatsSettingPage extends StatefulWidget {
  const WallpaperChangeChatsSettingPage({Key? key}) : super(key: key);

  @override
  _WallpaperChangeChatsSettingPageState createState() => _WallpaperChangeChatsSettingPageState();
}

class _WallpaperChangeChatsSettingPageState extends State<WallpaperChangeChatsSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Theme Wallpaper"),
      ),
    );
  }
}
