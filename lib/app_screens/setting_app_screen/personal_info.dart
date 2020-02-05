import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';

class PersonalInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalInfoState();
  }
}
class PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );},),
          title: Text(
            "Personal Information",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child:Column(
              children: <Widget>[
                Center(child:Column(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage:
                          AssetImage("images/Holi.jpg"),
                        ),
                      ),
            ListTile(
              trailing: Icon(Icons.edit),
              title: Text("Sandip Puri"),
            ),
                    ]
                ),
                ),

              ],
            )
        )
    );
  }
}