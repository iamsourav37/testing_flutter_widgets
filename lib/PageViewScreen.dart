import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView example"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            color: Colors.greenAccent,
            child: Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.yellowAccent,
            child: Center(
              child: Text("Page 3"),
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: Center(
              child: Text("Page 4"),
            ),
          ),
          Container(
            color: Colors.limeAccent,
            child: Center(
              child: Text("Page 5"),
            ),
          ),
        ],
      ),
    );
  }
}
