import 'package:flutter/cupertino.dart';
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
  Widget bottomAttachmentSheet() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 320,
      child: Card(
        margin: EdgeInsets.only(left: 4, right: 4, bottom: 65),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  bottomAttachmentSheetIcon(Icons.insert_drive_file,
                      Colors.deepPurpleAccent, "Document"),
                  SizedBox(
                    width: 40,
                  ),
                  bottomAttachmentSheetIcon(
                      Icons.camera_alt, Colors.red.shade500, "Camera"),
                  SizedBox(
                    width: 40,
                  ),
                  bottomAttachmentSheetIcon(
                      Icons.image, Colors.purple, "Gallery"),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bottomAttachmentSheetIcon(
                      Icons.headset, Colors.deepOrange, "Audio"),
                  SizedBox(
                    width: 40,
                  ),
                  bottomAttachmentSheetIcon(
                      Icons.location_on, Colors.green, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  bottomAttachmentSheetIcon(
                      Icons.person, Colors.lightBlue, "Contact"),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomAttachmentSheetIcon(IconData? icon, Color? color, String title) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(
              icon,
              color: Colors.white,
              size: 29,
            ),
            backgroundColor: color,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

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
                                  onPressed: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (builder) =>
                                          bottomAttachmentSheet(),
                                    );
                                  },
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
