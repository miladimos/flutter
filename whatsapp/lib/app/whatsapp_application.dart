import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/layouts/pages/auth/welcome_page.dart';
import 'package:whatsapp/app/layouts/pages/chats/chats_page.dart';
import 'package:whatsapp/app/layouts/pages/splash/splash_page.dart';
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
        accentColor: accentColor,
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
        ),
        fontFamily: "Vazir",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Whatsapp(),
         '/splash': (context) => WelcomePage(),
      },
      // home: Whatsapp(),
    );
  }
}
