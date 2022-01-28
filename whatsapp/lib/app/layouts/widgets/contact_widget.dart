import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Title"),
      subtitle: Text("bio...................."),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
