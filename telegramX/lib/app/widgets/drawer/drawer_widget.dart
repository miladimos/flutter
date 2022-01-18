import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('username'),
            accountEmail: Text('mobile'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/536/354'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Contacts'),
            leading: Icon(Icons.perm_contact_cal_rounded),
            onTap: null,
          ),
          ListTile(
            title: Text('Saved Messages'),
            leading: Icon(Icons.bookmark),
            onTap: null,
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: null,
          ),
          ListTile(
            title: Text('Invite Friends'),
            leading: Icon(Icons.person_add),
            onTap: null,
          ),
          ListTile(
            title: Text('Proxy'),
            leading: Icon(Icons.shield),
            onTap: null,
          ),
          ListTile(
            title: Text('Help'),
            leading: Icon(Icons.help),
            onTap: null,
          ),
          Divider(height: 1,),
          ListTile(
            // dense: true,
            title: Text('Night Mode'),
            leading: Icon(Icons.nightlight_round),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
