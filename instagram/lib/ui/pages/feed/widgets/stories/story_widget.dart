import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://i.pravatar.cc/150?img=2')),
            ),
          ),
          Container(
            width: size.width * 0.19,
            alignment: Alignment.center,
            child: Text(
              "user",
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
