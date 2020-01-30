import "package:flutter/material.dart";

class ContainerOfSetting extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<ContainerOfSetting> {
  Widget build(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Personal Information"),
          subtitle: Text("personalize your profile."),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ),

        ListTile(
          leading: Icon(Icons.list),
          title: Text("Activity Log"),
          subtitle: Text("Check where have you been."),
        ),

        ListTile(
          leading: Icon(Icons.share),
          title: Text("Invite Friends"),
          subtitle: Text("Let them also know about this app"),
        ),


        ListTile(
          leading: Icon(Icons.font_download),
          title: Text("Language"),
          subtitle: Text("Change language"),
        ),


        ListTile(
          leading: Icon(Icons.report_problem),
          title: Text("Report a Problem"),
          subtitle: Text("Have a problem. Please let us know."),
        ),

        ListTile(
          leading: Icon(Icons.help),
          title: Text("Help"),
        ),

        ListTile(
          leading: Icon(Icons.info),
          title: Text("About us"),
        ),

        ListTile(
          leading: Icon(Icons.assignment),
          title: Text("Terms and Conditions"),
        ),

        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Log Out"),
        ),

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
      ],
    );

    return listView;
  }
}
