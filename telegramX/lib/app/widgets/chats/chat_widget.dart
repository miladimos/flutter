import 'package:flutter/material.dart';
import 'package:telegramX/app/widgets/chats/avatar_widget.dart';

class ChatWidget extends StatelessWidget {
  final String name;
  final String avatar;
  final String message;
  final String time;
  final String messagesCount;
  final bool haveUnreadMessage;

  const ChatWidget(this.name, this.avatar, this.message,  this.time,this.messagesCount, this.haveUnreadMessage);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5,left: 10),
      leading: AvatarWidget(this.avatar),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(this.name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19
            ),),
            Text(this.time,style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(this.message,style: TextStyle(fontWeight: FontWeight.w500),),
            Container(
              child: Text(this.messagesCount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              decoration: BoxDecoration(
                border: this.haveUnreadMessage ? Border.all(width: 1) : Border.all(width: 0),
                borderRadius: BorderRadius.circular(50),
                color: this.haveUnreadMessage ? Colors.green : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
