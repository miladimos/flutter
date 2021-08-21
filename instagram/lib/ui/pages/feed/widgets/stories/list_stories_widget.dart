import 'package:flutter/material.dart';
import 'package:instagram/ui/pages/feed/widgets/stories/story_widget.dart';
import 'package:instagram/ui/pages/feed/widgets/stories/your_story_widget.dart';

class ListStories extends StatelessWidget {
  const ListStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.14,
          child: ListView.builder(
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return index == 0 ? YourStory() : Story();
            },
          ),
        ),
        Divider(
          height: 5,
          color: Colors.black,
        )
      ],
    );
  }
}
