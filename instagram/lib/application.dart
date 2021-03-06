import 'package:flutter/material.dart';
import 'package:instagram/ui/pages/activities/activities_page.dart';
import 'package:instagram/ui/pages/camera/camera_page.dart';
import 'package:instagram/ui/pages/explorer/explorer_page.dart';
import 'package:instagram/ui/pages/feed/feed_page.dart';
import 'package:instagram/ui/pages/profile/profile_page.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _currentSelectedIndex = 0;

  void _onBottomNavigationBarTapped(int index) {
    setState(() {
      this._currentSelectedIndex = index;
    });
  }

  List pagesOption = [
    new FeedPage(),
    new ExplorerPage(),
    new CameraPage(),
    new ActivitiesPage(),
    new ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.pagesOption[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: ""),
        ],
        onTap: _onBottomNavigationBarTapped,
        currentIndex: _currentSelectedIndex,
      ),
    );
  }
}
