import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hi User",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/150?img=59'),
                  ),
                ],
              ),
              const Text(
                "15 task pending",
                style: TextStyle(fontSize: 18, color: Colors.deepOrange),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 65,
                    width: 250,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade300,
                          size: 40,
                        ),
                        const Text(
                          "Search",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    radius: 33,
                    child: Icon(
                      Icons.menu_open_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.only(top: 12),
                      height: 225,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Website',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            '10 Task',
                            style: TextStyle(fontSize: 14),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: Stack(
                              children: [
                                CustomPaint(
                                  painter:  ChartPainter(
                                    angel: 100,
                                    color: Colors.grey.shade100,
                                  ),
                                  child: Container(),
                                ),
                                const CustomPaint(
                                  painter:  ChartPainter(
                                    angel: 10,
                                    color: Colors.red,
                                  ),
                                  child: Center(
                                    child: Text("40%"),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final double angel;
  final Color? color;

  const ChartPainter({required this.angel, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var cpaint = Paint()
      ..color = color ?? Colors.greenAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    canvas.drawArc(Rect.fromLTRB(0, 0, size.width, size.height), -math.pi / 2,
        (math.pi * 2) * (angel / 100), false, cpaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
