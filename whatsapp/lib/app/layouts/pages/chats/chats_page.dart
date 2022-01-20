import 'package:flutter/material.dart';
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
    return Center(
      child: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatsData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chatsData[index].time,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                leading: AvatarWidget(chatsData[index].avatar),
                subtitle: Container(
                  child: Text(chatsData[index].lastMessage),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
