import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String avatar;

  const AvatarWidget(this.avatar);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(this.avatar),
    );
  }
}
