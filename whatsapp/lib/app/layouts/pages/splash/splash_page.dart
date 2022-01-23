import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/functions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  simulateTime() {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, () {
      navigatoToPageRoute(context, '/');
    });
  }

  @override
  void initState() {
    super.initState();
    simulateTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 100,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  applicationTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
