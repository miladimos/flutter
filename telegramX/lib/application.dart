import 'package:flutter/material.dart';
import 'package:telegramX/app/models/chat_model.dart';
import 'package:telegramX/app/widgets/chats/chat_widget.dart';
import 'package:telegramX/app/widgets/drawer/drawer_widget.dart';
import 'package:telegramX/constants.dart';

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(AppConstants.applicationTitle),
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
            ChatWidget(
                chatsData[index].name,
                chatsData[index].avatar,
                chatsData[index].messages,
                chatsData[index].time,
                chatsData[index].messagesCount,
                true),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.create),
      ),
    );
  }
}
