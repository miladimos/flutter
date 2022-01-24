import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Select contact"),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("Invite a contact"),
                  ),
                  PopupMenuItem(
                    child: Text("Contacts"),
                  ),
                  PopupMenuItem(
                    child: Text("Refresh"),
                  ),
                  PopupMenuItem(
                    child: Text("Help"),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Text('Contacts'),
      ),
    );
  }
}
