import 'package:flutter/material.dart';
import 'package:telegramX/constants.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(applicationTitle),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Text(applicationTitle),
      drawer: Drawer(
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
            ListTile(
              title: Text('Night Mode'),
              leading: Icon(Icons.nightlight_round),
              onTap: null,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.create),
      ),
    );
  }
}
