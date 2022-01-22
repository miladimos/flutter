import 'package:flutter/material.dart';

class WallpaperChatsSettingPage extends StatefulWidget {
  const WallpaperChatsSettingPage({Key? key}) : super(key: key);

  @override
  _WallpaperChatsSettingPageState createState() => _WallpaperChatsSettingPageState();
}

class _WallpaperChatsSettingPageState extends State<WallpaperChatsSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Wallpaper"),
      ),
    );
  }
}
