import 'package:flutter/material.dart';

class CustomPaintPage extends StatefulWidget {
  const CustomPaintPage({Key? key}) : super(key: key);

  @override
  _CustomPaintPageState createState() => _CustomPaintPageState();
}

class _CustomPaintPageState extends State<CustomPaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPainer page"),
      ),
      body: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.translate(size.width / 2, size.height / 2); destination point is center

    canvas.drawPaint(Paint()..color = Colors.blue.shade100);

    canvas.drawLine(
        Offset.zero,
        Offset(100, 200),
        Paint()
          ..color = Colors.red
          ..strokeWidth = 10.0
          ..strokeCap = StrokeCap.round
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
