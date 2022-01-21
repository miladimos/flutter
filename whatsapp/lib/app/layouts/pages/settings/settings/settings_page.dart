import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/app/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 33,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("this is my bio"),
                      trailing: Icon(
                        Icons.qr_code,
                        color: accentColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        title: Text(
                          'Account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Privacy, security, change number'),
                        leading: Icon(Icons.account_circle),
                      ),
                      ListTile(
                        title: Text(
                          'Chats',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Theme, wallpapers, chat history'),
                        leading: Icon(Icons.chat),
                      ),
                      ListTile(
                        title: Text(
                          'Notifications',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Messages, group & call tones'),
                        leading: Icon(Icons.notifications),
                      ),
                      ListTile(
                        title: Text(
                          'Storage and data',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Network usage, auto-downloading'),
                        leading: Icon(Icons.storage_outlined),
                      ),
                      ListTile(
                        title: Text(
                          'Help',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text('Help center, contact us, privacy policy'),
                        leading: Icon(Icons.help),
                      ),
                      ListTile(
                        title: Text(
                          'Invite a contact',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.account_circle,
                          color: accentColor,
                        ),
                      ),
                    ],
                  ).toList(),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('from'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      Text(
                        'Meta',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
