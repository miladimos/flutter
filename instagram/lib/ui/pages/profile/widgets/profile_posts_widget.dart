import 'package:flutter/material.dart';

class ProfilePostsWidget extends StatefulWidget {
  const ProfilePostsWidget({Key? key}) : super(key: key);

  @override
  _ProfilePostsWidgetState createState() => _ProfilePostsWidgetState();
}

class _ProfilePostsWidgetState extends State<ProfilePostsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 1,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: List.generate(10, (index) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: double.maxFinite,
              child: Image(image: NetworkImage('https://picsum.photos/536/354'),),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.video_call),
            ),
          ],
        );
      }),
    );
  }
}
