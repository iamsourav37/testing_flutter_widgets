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
        child: SingleChildScrollView(
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
              Container(
                padding: EdgeInsets.all(20.0),
                width: 300.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    primary: Colors.lightBlueAccent,
                    onPrimary: Colors.black87,
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    shadowColor: Colors.yellow,
                    elevation: 4.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    
                  ),
                  onPressed: () {
                    print("button pressed");
                  },
                  child: Text("Submit"),
                ),
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
      ),
    );
  }
}
