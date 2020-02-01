
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/homepage.dart';
import "./app_screens/setting.dart";
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Namaskar",
    home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30.0,
            onPressed: () {},
          ),
          title: Text(
            "Namaskar",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  onPressed: () {},
                )),
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
        body:ListView(
          children: <Widget>[
            Home(),EventsAndPlaces()
          ],
        ),
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
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.easeInCirc,
      ),
    ),
  ));
}//main
