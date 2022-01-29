import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewGroupDetail extends StatefulWidget {
  const NewGroupDetail({Key? key}) : super(key: key);

  @override
  _NewGroupDetailState createState() => _NewGroupDetailState();
}

class _NewGroupDetailState extends State<NewGroupDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFCFCFDFF),
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New group"),
            Text(
              "Add subject",
              style: TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))
            ),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type group subject here...",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        contentPadding: EdgeInsets.zero,
                      ),
                      maxLength: 25,
                      maxLines: 1,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.emoji_emotions_outlined),
                    onPressed: null,
                  ),
                ),
                Text(
                  "Provide a group subject and optional group icon",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))
            ),
            child: ListTile(
              title: Text("Disappearing messages",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Off"),
              trailing: Icon(Icons.av_timer),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(),
        ],
      ),
    );
  }
}
