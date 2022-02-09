import 'package:flutter/material.dart';
import 'package:instagram/ui/pages/direct/widgets/chats_list_widget.dart';
import 'package:instagram/ui/pages/direct/widgets/online_users_widget.dart';

class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);

  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black,
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Username",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Padding(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 20,
                ),
                padding: EdgeInsets.fromLTRB(1, 7, 0, 0),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => null,
                icon: Icon(
                  Icons.video_call_outlined,
                  color: Colors.black,
                  size: 35,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 35,
                )),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Text("test"),
              Text(
                "test",
                style: TextStyle(color: Colors.black),
              ),
              OnlineUsersWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ChatsListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
