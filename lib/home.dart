
import "package:flutter/material.dart";
import 'package:flutter_login_page/Events/Eventlist.dart';
import 'package:flutter_login_page/Events/Shivaratri.dart';
import 'package:flutter_login_page/app_screens/write.dart';
import 'package:flutter_login_page/ring.dart';
import 'package:flutter_login_page/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import './app_screens/homepage.dart';
import 'Event/searchScreen.dart';
import 'app_screens/map _screen.dart';

class Homes extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
// SingleTickerProviderStateMixin is used for animation
class _MyAppState extends State<Homes> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
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
        backgroundColor: Colors.blue.shade900,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(5),
              child: IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Search()),
                );},
              )),
        ],
      ),
      // Set the TabBar view as the body of the Scaffold

      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          Home(),
          Ring(),
          MyHomePage(),
          list(),
          Write()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.blue.shade900,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.bookmark),
            ),
            Tab(
              icon: Icon(Icons.date_range),
            ),
            Tab(
              icon: Icon(Icons.rate_review),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}



