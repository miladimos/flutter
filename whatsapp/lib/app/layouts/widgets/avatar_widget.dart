import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String avatarUrl;

  const AvatarWidget(this.avatarUrl);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(avatarUrl),
      backgroundColor: Colors.grey,
    );
  }
}
