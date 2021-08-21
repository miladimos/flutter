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
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 40,
                      height: 40,
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
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    Icon(
                      Icons.send,
                      size: 30,
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "13,000 views",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Expanded(
                        child: Text(
                          "user1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 5),
                      child: Text(
                        "View all 100 comments",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 2, 0, 5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pravatar.cc/150?img=2'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Add a comment...",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 15,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3),
                              ),
                              Icon(
                                Icons.hotel,
                                size: 15,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3),
                              ),
                              Icon(
                                Icons.add_circle_outline,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 2, 0, 5),
                      child: Row(
                        children: [
                          Text(
                            "4 hours ago",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          Text(
                            "-",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          Text(
                            "See Translation",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
