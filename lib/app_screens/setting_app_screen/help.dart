import"package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/widgets/home_screen_widget.dart';

class Help extends StatelessWidget{
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
          "Help",
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
              title: Text("Help Center",style: TextStyle(fontSize:20),),
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
              title: Text("Privacy and Security Help",style: TextStyle(fontSize:20)),
            ),
          ],
        ),
      ),
    );
  }
}