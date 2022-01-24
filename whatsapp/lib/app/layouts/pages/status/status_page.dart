import 'package:flutter/material.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/camera/camera_page.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: () {
          navigateToPage(context, CameraPage());
        },
      ),
    );
  }
}
