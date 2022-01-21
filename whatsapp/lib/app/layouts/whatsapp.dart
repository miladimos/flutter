import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/calls/calls_page.dart';
import 'package:whatsapp/app/layouts/pages/camera/camera_page.dart';
import 'package:whatsapp/app/layouts/pages/chats/chats_page.dart';
import 'package:whatsapp/app/layouts/pages/settings/settings/settings_page.dart';
import 'package:whatsapp/app/layouts/pages/status/status_page.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Map<String, SliverAppBar?> appBarList;
  String _currentAppBar = 'mainAppBar';

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(vsync: this, length: _tabs.length, initialIndex: 1);

    SliverAppBar _mainAppBar() {
      return new SliverAppBar(
        floating: true,
        pinned: true,
        title: Text(applicationTitle),
        elevation: 5,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                _currentAppBar = 'searchAppBar';
              });
            },
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('New group'),
                  value: 'new_group',
                ),
                PopupMenuItem(
                  child: Text('Labels'),
                  value: 'labels',
                ),
                PopupMenuItem(
                  child: Text('Linked devices'),
                  value: 'linked_devices',
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 'settings',
                ),
              ];
            },
            onSelected: (String choice) {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      );
    }

    SliverAppBar _searchAppBar = new SliverAppBar(
      pinned: true,
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search ...",
        ),
      ),
      elevation: 5,
      backgroundColor: Colors.white,
      leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            setState(() {
              _currentAppBar = 'mainAppBar';
            });
          }),
    );

    appBarList = <String, SliverAppBar?>{
      'mainAppBar': _mainAppBar(),
      'searchAppBar': _searchAppBar,
    };
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  static const List<Tab> _tabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                floating: true,
                pinned: true,
                title: Text(applicationTitle),
                elevation: 5,
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _currentAppBar = 'searchAppBar';
                      });
                    },
                  ),
                  PopupMenuButton(
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: Text('New group'),
                          value: 'new_group',
                        ),
                        PopupMenuItem(
                          child: Text('Labels'),
                          value: 'labels',
                        ),
                        PopupMenuItem(
                          child: Text('Linked devices'),
                          value: 'linked_devices',
                        ),
                        PopupMenuItem(
                          child: Text('Settings'),
                          value: 'settings',
                        ),
                      ];
                    },
                    onSelected: (String choice) {
                      switch (choice) {
                        case 'settings':
                          navigateToPage(context, SettingsPage());
                          break;
                        default:
                      }
                    },
                  ),
                ],
                bottom: TabBar(
                  controller: _tabController,
                  tabs: _tabs,
                ),
              )
            ];
          },
          body: _currentAppBar == 'mainAppBar'
              ? TabBarView(
                  controller: _tabController,
                  children: [
                    CameraPage(),
                    ChatsPage(),
                    StatusPage(),
                    CallsPage(),
                  ],
                )
              : Center(
                  child: Text('Search'),
                )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    );
  }
}
