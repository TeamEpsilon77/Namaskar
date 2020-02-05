import"package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: (){ Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Settings()),
        );},),
        title: Text(
          "About Us",
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
            ListTile(
              title: Text("App Updates",style: TextStyle(fontSize:20),),
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
              title: Text("Open Source Licenses",style: TextStyle(fontSize:20)),
            ),
          ],
        ),
      ),
    );
  }
}