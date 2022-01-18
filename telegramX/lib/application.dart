import 'package:flutter/material.dart';
import 'package:telegramX/app/models/chat_model.dart';
import 'package:telegramX/app/widgets/drawer/drawer_widget.dart';
import 'package:telegramX/constants.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(applicationTitle),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Divider(
              height: 0.5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(chatsData[index].avatar),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chatsData[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: [
                  //     Padding(
                  //       padding: EdgeInsets.all(5.0),
                  //       child: Text(
                  //         chatsData[index].time,
                  //         style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(top: 3.0),
                  //       child: Container(
                  //         child: Text(
                  //           chatsData[index].messagesCount,
                  //           style: TextStyle(
                  //               fontSize: 12.0, backgroundColor: Colors.grey),
                  //         ),
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(5.0),
                  //         ),
                  //         padding: EdgeInsets.all(2),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              subtitle: Text(chatsData[index].messages),
              trailing: Text(chatsData[index].time),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.create),
      ),
    );
  }
}
