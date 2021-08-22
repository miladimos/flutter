import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          Padding(
            child: Icon(Icons.search),
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('List $index'),
              subtitle: Text("skljflksdjfklsjdflksjdlkfjsdlkjf"),
              onTap: null,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                child: Text("Test"),
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
            ),
            ListTile(
              title: Text("my notes"),
              leading: Icon(Icons.assignment),
              trailing: Icon(Icons.arrow_forward),
              onTap: null,
            ),
            ListTile(
              title: Text("setting"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
              onTap: null,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        splashColor: secondaryColor,
        elevation: 5,
        tooltip: "Add note",
      ),
    );
  }
}
