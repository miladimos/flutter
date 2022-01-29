import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/app/constants.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/groups/newgroup/new_group_detail.dart';
import 'package:whatsapp/app/layouts/pages/status/status_page.dart';
import 'package:whatsapp/app/layouts/widgets/contact_widget.dart';
import 'package:whatsapp/app/models/contact_model.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({Key? key}) : super(key: key);

  @override
  _NewGroupPageState createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  List forGroupSelected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New group"),
            Text(
              "Add participants",
              style: TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contactsData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  contactsData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                leading: Container(
                  height: 53,
                  width: 50,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: accentColor,
                        backgroundImage:
                            NetworkImage(contactsData[index].avatar),
                        radius: 25,
                      ),
                      contactsData[index].groupSelected
                          ? Positioned(
                              child: CircleAvatar(
                                backgroundColor: Colors.teal,
                                child: Icon(
                                  Icons.check,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                radius: 11,
                              ),
                              bottom: 0,
                              right: 0,
                            )
                          : Container(),
                    ],
                  ),
                ),
                subtitle: Text(contactsData[index].bio),
                onTap: () {
                  if (contactsData[index].groupSelected == false) {
                    setState(() {
                      contactsData[index].groupSelected = true;
                      this.forGroupSelected.add(contactsData[index]);
                    });
                  } else {
                    setState(() {
                      contactsData[index].groupSelected = false;
                      this.forGroupSelected.remove(contactsData[index]);
                    });
                  }
                },
              );
            },
          ),
          this.forGroupSelected.length > 0 ?  Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12)),
                color: Colors.white),
            height: 87,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.forGroupSelected.length,
              itemBuilder: (context, innerIndex) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      if(this.forGroupSelected.contains(contactsData[innerIndex])) {
                      print(this.forGroupSelected[innerIndex].name);
                      contactsData[innerIndex].groupSelected = false;
                      this.forGroupSelected.remove(contactsData[innerIndex]);
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  this.forGroupSelected[innerIndex].avatar),
                              radius: 22,
                            ),
                            Positioned(
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                radius: 10,
                                backgroundColor: Colors.grey.shade500,
                              ),
                              bottom: 0,
                              right: 0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          this.forGroupSelected[innerIndex].name,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ) : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_right_alt,
          color: Colors.white,
          size: 35,
        ),
        onPressed: () => navigateToPage(context, NewGroupDetail()),
      ),
    );
  }
}
