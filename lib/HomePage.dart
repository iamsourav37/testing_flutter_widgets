import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            TextFormField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.brown,
                onPrimary: Colors.white,
              ),
              onPressed: () {},
              child: Text("Submit"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("hello"),
              style: TextButton.styleFrom(
                primary: Colors.green,
                
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text("person"),
              style: TextButton.styleFrom(
                primary: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
