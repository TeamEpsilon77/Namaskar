import"package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/widgets/home_screen_widget.dart';

class Language extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: (){ Navigator.pop(
          context,
        );},),
        title: Text(
          "Language",
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
              child: Text("Select your Language",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            ListTile(
              title: Text("English(US)",style: TextStyle(fontSize:20)),
              trailing: IconButton(icon: Icon(Icons.check)),
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
              title: Text("English(UK)",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Nepali",style: TextStyle(fontSize:20)),
            ),

            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Hindi",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("French",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Korean",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Japanese",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Russian",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Chinese",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Urdu",style: TextStyle(fontSize:20)),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Spanish",style: TextStyle(fontSize:20)),
            ),
          ],
        ),
      ),
    );
  }
}