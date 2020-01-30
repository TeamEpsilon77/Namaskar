import "package:flutter/material.dart";
import "./setting.dart";
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homes extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Homes> {
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Namaskar")),
          backgroundColor: Colors.indigo,
          leading: Icon(Icons.account_circle, size: 30.0,),

          actions: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.search, size: 30.0)),
            Icon(Icons.more_vert, size: 30.0)
          ],
        ),
        body: ContainerOfSetting(),

        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.indigo,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 20.0),
            Icon(Icons.notifications, size: 20.0),
            Icon(Icons.bookmark, size: 20.0),
            Icon(Icons.settings, size: 20.0),
          ],
          onTap: (index) {
            debugPrint("$index");
          },
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.easeInCirc,
        ),

      );
  }
}
