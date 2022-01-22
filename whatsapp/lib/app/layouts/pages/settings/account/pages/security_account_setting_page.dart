import 'package:flutter/material.dart';

class SecurityAccountSettingPage extends StatefulWidget {
  const SecurityAccountSettingPage({Key? key}) : super(key: key);

  @override
  _SecurityAccountSettingPageState createState() => _SecurityAccountSettingPageState();
}

class _SecurityAccountSettingPageState extends State<SecurityAccountSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security"),
      ),
    );
  }
}
