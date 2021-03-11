import 'package:flutter/material.dart';
import 'package:testing/HomePage.dart';
import 'package:testing/LoginPage.dart';
import 'package:testing/SignupPage.dart';
import 'Profile.dart';

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
        primaryColor: Colors.orange,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/profile': (context) => ProfileScreen(),
      },
      initialRoute: '/',
    );
  }
}
