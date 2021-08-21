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
          Container(
            margin: EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pravatar.cc/150?img=2')),
                      ),
                    ),
                    Padding(
                      child: Text(
                        "user1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 5),
                    )
                  ],
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Image.network(
                  'https://picsum.photos/536/354',
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                    ),
                    Icon(
                      Icons.send,
                      size: 35,
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
