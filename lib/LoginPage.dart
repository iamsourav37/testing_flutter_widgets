import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  void goToProfile() {
    if (formKey.currentState.validate()) {
      print("go to profile screen");
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Container(
                child: FlutterLogo(
                  size: 140,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) return "enter username";
                    return null;
                  },
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty || value.length < 6)
                      return 'enter password atleast 6 character';
                    return null;
                  },
                  obscureText: true,
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 22.0,
                    ),
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
                    print("login functionality");
                    this.goToProfile();
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
