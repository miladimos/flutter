import 'dart:ui';

import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Theme(
          data: ThemeData(
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment(0, 1),
            children: [
              Container(
                height: 230,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.keyboard_arrow_up),
                    Text(
                      "Swipe up for gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List<Widget>.generate(
                            10,
                            (index) => Container(
                                  color: Colors.red,
                                  width: 70,
                                  margin: EdgeInsets.all(4),
                                )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.flash_off,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                              shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          )),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          "Hold for video, tap for photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
