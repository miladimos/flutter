import 'package:flutter/material.dart';
import 'package:instagram/ui/pages/profile/widgets/list_story_highlight.dart';

import '../../../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TopBarColor,
        elevation: 0,
        title: Text(
          "user1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        actions: [
          Padding(
            child: Icon(
              Icons.menu,
              size: 30,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(3),
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pravatar.cc/150?img=2')),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("300"),
                                    Text("posts"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("100"),
                                    Text("followers"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("150"),
                                    Text("following"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Edit Profile"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            ListStoryHighlight(),
          ],
        ),
      ),
    );
  }
}
