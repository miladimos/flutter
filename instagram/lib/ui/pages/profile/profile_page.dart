import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/ui/pages/profile/widgets/list_story_highlight.dart';
import 'package:instagram/ui/pages/profile/widgets/profile_button_widget.dart';
import 'package:instagram/ui/pages/profile/widgets/profle_info_widget.dart';

import '../../../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  // final TabController _tabController;

  


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        endDrawer: Drawer(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(3),
                      width: constraints.maxWidth / 4,
                      height: constraints.maxWidth / 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/150?img=56'),
                      ),
                    ),
                    ProfileInfoWidget(title: 'Posts', data: '100'),
                    ProfileInfoWidget(title: 'Followers', data: '500'),
                    ProfileInfoWidget(title: 'Followings', data: '1000'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Username'),
                      Text('Username'),
                      Text('Username'),
                    ],
                  ),
                ),
                Row(
                  children: [ProfileButtonWidget(title: 'Edit profile')],
                ),
                Container(
                  height: constraints.maxWidth / 7 + 40,
                  child: ListView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(10, (index) {
                      return Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 8, right: 8, left: 8),
                            padding: EdgeInsets.all(3),
                            width: constraints.maxWidth / 6,
                            height: constraints.maxWidth / 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: ClipOval(
                              child: index == 0
                                  ? IconButton(
                                      onPressed: null, icon: Icon(Icons.add))
                                  : Image(
                                      image: NetworkImage(
                                          'https://picsum.photos/536/354'),
                                      fit: BoxFit.fill,
                                    ),
                            ),
                          ),
                          Text(
                            index == 0 ? "New" : "Highlight",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Icon(
                          Icons.dashboard,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        child: Icon(
                          Icons.dashboard,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                TabBarView(

                  children: [
                    Center(
                      child: Text('Posts'),
                    ),
                    Center(
                      child: Text('IGVT'),
                    ),
                    Center(
                      child: Text('Tagged'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
