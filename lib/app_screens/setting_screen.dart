import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_app_screen/about.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/help.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/invite_friends.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/language.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/personal_info.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/report_problem.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/terms_and_conditions.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }
}

class SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalInfo()),
            ),
              title: Text("Personal Information"),
              subtitle: Text("personalize your profile."),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.share),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InviteFriends()),
            ),
              title: Text("Invite Friends"),
              subtitle: Text("Let them also know about this app"),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.font_download),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Language()),
            ),
              title: Text("Language"),
              subtitle: Text("Change language"),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.report_problem),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportProblem()),
            ),
              title: Text("Report a Problem"),
              subtitle: Text("Have a problem. Please let us know."),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.help),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Help()),
            ),
              title: Text("Help"),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.info),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUs()),
            ),
              title: Text("About us"),
            ),
            Divider(
              height: 1.0,
              indent: 1.0,
              color: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.assignment),onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TermsAndConditions()),
            ),
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
        )
    );
  }
}
