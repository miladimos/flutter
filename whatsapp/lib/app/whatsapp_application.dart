import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/layouts/whatsapp.dart';

class WhatsappApplication extends StatefulWidget {
  const WhatsappApplication({Key? key}) : super(key: key);

  @override
  _WhatsappApplicationState createState() => _WhatsappApplicationState();
}

class _WhatsappApplicationState extends State<WhatsappApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: Whatsapp(),
    );
  }
}
