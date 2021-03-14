import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PageViewScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final String imageUrl =
      "https://avatars.githubusercontent.com/u/35891854?s=460&u=112993d530677c03e75b3b3adbc515de35edeac9&v=4";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sourav Ganguly"),
              accountEmail: Text("iamsourav37@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            ListTile(
              onTap: () {
                print("home ");
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.orange,
              ),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                print("Email ");
              },
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.orange,
              ),
              title: Text("Email"),
            ),
            ListTile(
              onTap: () {
                print("Story ");
              },
              leading: Icon(
                CupertinoIcons.book,
                color: Colors.orange,
              ),
              title: Text("Story"),
            ),
            ListTile(
              onTap: () {
                print("Page View");
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageViewScreen()));
              },
              leading: Icon(
                CupertinoIcons.book,
                color: Colors.orange,
              ),
              title: Text("Page View"),
            ),
            Divider(),
            ListTile(
              onTap: () {
                print("Logout");
              },
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.orange,
              ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Text("Drawer"),
        ),
      ),
    );
  }
}
