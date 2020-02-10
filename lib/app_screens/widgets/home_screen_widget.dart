import 'package:flutter/material.dart';
import 'package:namaskar_app/app_screens/bookmark_screen.dart';
import 'package:namaskar_app/app_screens/eventAndPlacesModel.dart';
import 'package:namaskar_app/app_screens/home_screen.dart';
import 'package:namaskar_app/app_screens/searchScreen.dart';
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/notification_screen.dart';
import 'package:namaskar_app/holi.dart';
import 'package:namaskar_app/location_services/map_screen.dart';


int _currentTab = 0;
final tabs=[
  ListView(
    children: <Widget>[
      Home(),EventsAndPlaces()
    ],
  ),
  HomeScreen(),
  Bookmark(),
  Settings(),
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
        leading: Padding(padding:EdgeInsets.all(8),
        child:CircleAvatar(
            backgroundImage:
            AssetImage("images/nepal1.jpg"),
      ),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Search()));
                },
              )),
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body:tabs[_currentTab],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(_)=>MapScreen()));
        },
        child: Icon(Icons.my_location,size: 30,color: Colors.grey,),
        backgroundColor: Colors.white,
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
            icon:IconButton(icon: Icon(Icons.settings,size: 25.0,color: Colors.white,),
            ),
            title: Text("Settings"),backgroundColor: Colors.indigo,
          ),
        ],
      ),
    );
  }

}