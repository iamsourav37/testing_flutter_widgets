import 'package:flutter/material.dart';
import 'package:testing/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Testing',
      theme: ThemeData(
        primaryColor: Colors.limeAccent,
      ),
      home: HomePage(),
    );
  }
}
