import 'package:flutter/material.dart';


class OnlineUsersWidget extends StatelessWidget {
  const OnlineUsersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/536/354'),
              radius: 33,
            ),
          );
        },),
    );
  }
}
