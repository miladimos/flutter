import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Welcome to WhatsApp",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: accentColor),
                  ),
                ),
                Spacer(),
                Container(
                  child: FlutterLogo(
                    size: 250,
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Column(
                    children: [
                      Text(
                        "Read our Privacy Policy. Tap \"Agree and continue\" to accept the Terms of Service.",
                        style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,

                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(accentColor),
                        ),
                        onPressed: null,
                        child: Text("AGREE AND CONTINUE"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
