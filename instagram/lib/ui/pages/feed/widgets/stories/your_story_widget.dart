import 'package:flutter/material.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(3),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://i.pravatar.cc/150?img=2')),
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5)),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade700,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                    radius: 11,
                  ),
                ),
                bottom: 5,
                right: 10,
              )
            ],
          ),
          Container(
            width: size.width * 0.19,
            alignment: Alignment.center,
            child: Text(
              "your story",
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
