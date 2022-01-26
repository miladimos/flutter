import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key, required this.chatData}) : super(key: key);
  final ChatModel chatData;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(widget.chatData.avatar),
              radius: 22,
            )
          ],
        ),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.chatData.name,
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "Online",
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: null,
          ),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('Label chat'),
                onTap: null,
              ),
              PopupMenuItem(
                child: Text('View contact'),
                onTap: null,
              ),
              PopupMenuItem(
                child: Text('Media, links, and docs'),
                onTap: null,
              ),
              PopupMenuItem(
                child: Text('Search'),
                onTap: null,
              ),
              PopupMenuItem(
                child: Text('Mute notifications'),
                onTap: null,
              ),
              PopupMenuItem(
                child: Text('Wallpaper'),
                onTap: null,
              ),
            ];
          })
        ],
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          prefixIcon: IconButton(
                            icon: Icon(Icons.emoji_emotions_outlined),
                            onPressed: null,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.attach_file)),
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.camera_alt)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      backgroundColor: accentColor,
                      radius: 25,
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
