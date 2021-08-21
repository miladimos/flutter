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
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            width: 70.0,
            height: 70.0,
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
