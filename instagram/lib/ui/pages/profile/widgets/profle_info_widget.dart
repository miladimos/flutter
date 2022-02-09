import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String title, data;

  const ProfileInfoWidget({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            data,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
