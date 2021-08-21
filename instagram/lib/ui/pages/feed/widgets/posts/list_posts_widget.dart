import 'package:flutter/material.dart';

class FeedListPosts extends StatefulWidget {
  const FeedListPosts({Key? key}) : super(key: key);

  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<FeedListPosts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text("Post")
            ],
          ),
        ],
      ),
    );
  }
}
