import 'package:flutter/material.dart';
import 'package:notes/application.dart';
import 'package:notes/constants.dart';

void main() {
  runApp(NotesApplication());
}

class NotesApplication extends StatefulWidget {
  const NotesApplication({Key? key}) : super(key: key);

  @override
  _NotesApplicationState createState() => _NotesApplicationState();
}

class _NotesApplicationState extends State<NotesApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home: Application(),
    );
  }
}
