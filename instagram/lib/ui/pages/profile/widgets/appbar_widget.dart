import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';

AppBar appbarWidget = AppBar(
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
);
