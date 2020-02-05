import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/widgets/home_screen_widget.dart';

class InviteFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: (){ Navigator.pop(
            context,
          );},
        ),
        title: Text(
          "Invite Friends",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: 500,
              height: 40,
              child: Text("Let your Friends also know about this app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.email),
              ),
              title: Text(
                "Invite Friends by Email",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                debugPrint("Landscape tapped");
              },
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.message),
              ),
              title: Text(
                "Invite Friends by SMS",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.share),
              ),
              title: Text(
                "Invite Friends by...",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
