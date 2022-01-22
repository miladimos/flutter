import 'package:flutter/material.dart';

class PrivacyAccountSettingPage extends StatefulWidget {
  const PrivacyAccountSettingPage({Key? key}) : super(key: key);

  @override
  _PrivacyAccountSettingPageState createState() => _PrivacyAccountSettingPageState();
}

class _PrivacyAccountSettingPageState extends State<PrivacyAccountSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy"),
      ),
    );
  }
}
