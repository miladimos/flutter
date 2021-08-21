import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/ui/pages/feed/widgets/posts/list_posts_widget.dart';
import 'package:instagram/ui/pages/feed/widgets/stories/list_stories_widget.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TopBarColor,
        elevation: 1,
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.black, fontFamily: 'Billabong', fontSize: 34),
        ),
        actions: <Widget>[Icon(Icons.send)],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return index == 0 ? new ListStories() : new FeedListPosts();
          },
        ),
      ),
    );
  }
}
