import 'package:flutter/material.dart';
import 'package:namaskar_app/app_screens/home_screen.dart';
import 'package:namaskar_app/app_screens/setting_screen.dart';

int _currentTab = 0;
final tabs=[
  Home(),EventsAndPlaces()
];

class HomeScreenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenWidgetState();
  }
}

class HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
        onTap:(value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:IconButton(icon: Icon(Icons.home,size: 25.0,color: Colors.white,),
            ),
            title: Text("Home"),backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon:IconButton(icon: Icon(Icons.notifications,size: 25.0,color: Colors.white,),
            ),
            title: Text("Notifications"),backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon:IconButton(icon: Icon(Icons.bookmark,size: 25.0,color: Colors.white,),
            ),
            title: Text("Bookmarks"),backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon:IconButton(icon: Icon(Icons.settings,size: 25.0,color: Colors.white,), onPressed: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scaffold(body: Settings(),)),
            );},
            ),
            title: Text("Settings"),backgroundColor: Colors.indigo,
          ),
        ],
      ),
    );
  }

}