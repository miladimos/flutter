import 'package:flutter/material.dart';

class ChatsListWidget extends StatefulWidget {
  const ChatsListWidget({Key? key}) : super(key: key);

  @override
  _ChatsListWidgetState createState() => _ChatsListWidgetState();
}

class _ChatsListWidgetState extends State<ChatsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("User $index"),
            subtitle: Text("Seen 30m ago"),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            trailing: Icon(Icons.camera_alt_outlined),
          );
        },
      ),
    );
  }
}
