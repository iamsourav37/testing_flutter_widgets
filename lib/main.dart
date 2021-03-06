import 'package:flutter/material.dart';
import 'package:testing/HomePage.dart';
import 'package:testing/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Testing',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}
