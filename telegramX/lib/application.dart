import 'package:flutter/material.dart';
import 'package:telegramX/app/models/chat_model.dart';
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
      body: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Divider(
              height: 0.5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chatsData[index].avatar),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chatsData[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          chatsData[index].time,
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Container(
                          child: Text(
                            chatsData[index].messagesCount,
                            style: TextStyle(
                                fontSize: 12.0, backgroundColor: Colors.grey),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Text(chatsData[index].messages),
            ),
          ],
        ),
      ),
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
