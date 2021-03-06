import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Container(
              child: FlutterLogo(
                size: 120,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: TextFormField(
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'enter your fullname',
                  labelText: 'Fullname',
                ),
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: TextFormField(
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'Enter your username',
                  labelText: 'Username',
                ),
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'password',
                  labelText: 'Password',
                ),
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'enter same password',
                  labelText: 'Confirm Password',
                ),
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  primary: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  textStyle: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  print("signup functionality");
                },
                child: Text("Signup"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
