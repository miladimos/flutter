import 'package:flutter/material.dart';
import 'package:fabler_icons/fabler_icons.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: Row(
          children: [
            Icon(FablerIcons.arrows_minimize),
          ],
        ),
      ),
    );
  }
}
