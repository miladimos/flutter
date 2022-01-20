import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/layouts/pages/calls/calls_page.dart';
import 'package:whatsapp/app/layouts/pages/camera/camera_page.dart';
import 'package:whatsapp/app/layouts/pages/chats/chats_page.dart';
import 'package:whatsapp/app/layouts/pages/status/status_page.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: _tabs.length, initialIndex: 1);
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
      appBar: AppBar(
        title: Text(applicationTitle),
        elevation: 5,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
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
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: null,
      ),
    );
  }
}
