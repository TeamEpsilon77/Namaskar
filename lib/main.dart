
import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/homepage.dart';
import "./app_screens/setting.dart";
import 'package:flutter/widgets.dart';

void main() {
  int _currentTab=0;
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
            icon: Icon(Icons.notifications),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body:SafeArea(child:ListView(
        children: <Widget>[
          Home(),EventsAndPlaces()
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 25.0,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    ),
  ));
}
