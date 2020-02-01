import "package:flutter/material.dart";

class ContainerOfSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getListView();
  }
}

Widget getListView() {
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
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.list),
        title: Text("Activity Log"),
        subtitle: Text("Check where have you been."),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.share),
        title: Text("Invite Friends"),
        subtitle: Text("Let them also know about this app"),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.font_download),
        title: Text("Language"),
        subtitle: Text("Change language"),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.report_problem),
        title: Text("Report a Problem"),
        subtitle: Text("Have a problem. Please let us know."),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.help),
        title: Text("Help"),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.info),
        title: Text("About us"),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.assignment),
        title: Text("Terms and Conditions"),
      ),
      Divider(
        height: 1.0,
        indent: 1.0,
        color: Colors.black,
      ),

      ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text("Log Out"),
      ),

    ],
  );

  return listView;
}
