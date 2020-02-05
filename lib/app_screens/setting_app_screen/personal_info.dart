import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/widgets/home_screen_widget.dart';

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
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
          title: Text(
            "Personalize Your Profile",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      child: GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage("images/Holi.jpg"),
                      ),),padding: EdgeInsets.only(bottom:10),
                    ),
                    Divider(
                      height: 1.0,
                      indent: 1.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      trailing: Icon(Icons.edit),onTap: (){},
                      title: Text(
                        'Name : Sandip Puri',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      indent: 1.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      trailing: Icon(Icons.edit),onTap: (){},
                      title: Text(
                        'Username : Sandip_77',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      indent: 1.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      trailing: Icon(Icons.edit),onTap: (){},
                      title: Text(
                        'Email : sandip.puri980@gmail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      indent: 1.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      trailing: Icon(Icons.edit),onTap: (){},
                      title: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            )));
  }
}
