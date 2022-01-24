import 'package:flutter/material.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/chats/chat_page.dart';
import 'package:whatsapp/app/layouts/widgets/avatar_widget.dart';
import 'package:whatsapp/app/models/chat_model.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  navigateToPage(context, ChatPage());
                },
                title: Text(
                  chatsData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: AvatarWidget(chatsData[index].avatar),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(chatsData[index].lastMessage),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      chatsData[index].time,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.green,
                      child: Text(
                        chatsData[index].unrealMessageCount.toString(),
                        style: TextStyle(color: Colors.lightGreenAccent, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    );
  }
}
