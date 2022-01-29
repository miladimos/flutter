import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/groups/newgroup/new_group_page.dart';
import 'package:whatsapp/app/layouts/widgets/contact_widget.dart';
import 'package:whatsapp/app/models/contact_model.dart';

class SelectContactPage extends StatefulWidget {
  const SelectContactPage({Key? key}) : super(key: key);

  @override
  _SelectContactPageState createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select contact"),
            Text(
              "50 contacts",
              style: TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
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
                  child: Text("Contact"),
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
      body: ListView.builder(
        itemCount: contactsData.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              title: Text(
                "New group",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              leading: CircleAvatar(
                backgroundColor: accentColor,
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              onTap: () => navigateToPage(context, NewGroupPage()),
            );
          }
          if (index == 1) {
            return ListTile(
              title: Text(
                "New contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              leading: CircleAvatar(
                backgroundColor: accentColor,
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            );
          }
          if (index == contactsData.length -1) {
            return ListTile(
              title: Text(
                "Contacts help",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              leading: Icon(
                Icons.help,
                color: Colors.grey,
                size: 30,
              ),
            );
          }
          if (index == contactsData.length -2) {
            return ListTile(
              title: Text(
                "Invite contacts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              leading: Icon(
                Icons.person_add,
                color: Colors.grey,
                size: 30,
              ),
            );
          }
          return ListTile(
            title: Text(
              contactsData[index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            leading: CircleAvatar(
              backgroundColor: accentColor,
              backgroundImage: NetworkImage(contactsData[index].avatar),
            ),
            subtitle: Text(contactsData[index].bio),
          );
        },
      ),
    );
  }
}
