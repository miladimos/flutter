import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 1,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontFamily: 'Billabong', fontSize: 34),
        ),
        actions: <Widget>[Icon(Icons.send)],
      ),
      body: Center(
        child: Text(
          "This is test",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Billabong"
          ),
        ),
      ),
    );
  }
}
