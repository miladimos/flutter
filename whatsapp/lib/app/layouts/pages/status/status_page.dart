import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("My status"),
              subtitle: Text("Tap to add status update"),
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 33,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[700],
                        borderRadius: BorderRadius.circular(33),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Text(
                "Recent updates",
                style: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
              ),
              // decoration: BoxDecoration(
              //   color: Colors.grey,
              // ),
            ),
            ListTile(
              title: Text("Ali"),
              subtitle: Text(
                "Yesterday, 6:30 PM",
                style: TextStyle(color: Colors.grey),
              ),
              leading: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 33,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              child: Icon(
                Icons.edit,
                color: Colors.grey[900],
              ),
              onPressed: null,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {
              navigateToPage(context, CameraPage());
            },
          ),
        ],
      ),
    );
  }
}
