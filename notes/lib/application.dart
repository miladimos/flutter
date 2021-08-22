import 'package:flutter/material.dart';
import 'package:notes/ui/pages/home/home_page1.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage1(),
    );
  }
}
