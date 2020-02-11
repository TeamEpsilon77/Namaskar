import 'package:flutter/material.dart';
import 'package:flutter_login_page/Event/eventAndPlacesModel.dart';
import 'package:flutter_login_page/Event/events_close_to_you_screen.dart';
import 'package:flutter_login_page/Event/nepali%20date.dart';
import 'package:flutter_login_page/Event/places_close_to_you.dart';
import 'package:flutter_login_page/Events/Eventlist.dart';
import 'package:flutter_login_page/app_screens/map%20_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        body(),EventsAndPlaces()
      ],),floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(_)=>MapScreen()));
      },
      child: Icon(Icons.my_location,size: 30,color: Colors.grey,),
      backgroundColor: Colors.white,
    ),

    );
  }
} //class

Widget body() {
  var column = Column(children: <Widget>[
    Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/grad.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(3.0),
                        color: Colors.blue.shade900,
                        child: Text(
                          getYearAndMonth(),
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                    Container(
                        padding: EdgeInsets.all(3.0),
                        color: Colors.blue.shade900,
                        child: Text(
                          getDay(),
                          style: TextStyle(fontSize: 45.0, color: Colors.white),
                        )),
                    Container(
                        padding: EdgeInsets.all(3.0),
                        color: Colors.blue.shade900,
                        child: Text(
                          getWeekDay(),
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                    Container(
                        padding: EdgeInsets.all(3.0),
                        color: Colors.blue.shade900,
                        child: Text(
                          getAD(),
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        )),
                  ],
                )),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '"Maha Shivaratri"',
                        style: TextStyle(fontSize: 30.0, color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(daysToGo()+' Days To Go...',
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
  ]);
  return column;
}

class EventsAndPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Festivals & Events',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => list()),
                  );},
                ),
              ],
            ),
          ),
          Container(
            height: 240.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 8.0),
              scrollDirection: Axis.horizontal,
              itemCount: upComing.length,
              itemBuilder: (BuildContext context, int index) {
                Event upcoming = upComing[index];
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>EventScreen(upcoming: upcoming,)));
                    },
                    child:Container(
                        margin: EdgeInsets.all(10.0),
                        width: 200.0,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Positioned(
                              bottom: 10.0,
                              child: Container(
                                  height: 160.0,
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(10.0)),
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          upComing[index].name,
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 6.0)
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      height: 180.0,
                                      width: 180.0,
                                      image:
                                      AssetImage(upComing[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Places Near You',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => list()),
                    );},
                ),
              ],
            ),
          ),
          Container(
            height: 240.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 8.0),
              scrollDirection: Axis.horizontal,
              itemCount: near.length,
              itemBuilder: (BuildContext context, int index) {
                Places around = near[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PlaceScreen(around: around)));
                  },
                  child:Container(
                      margin: EdgeInsets.all(10.0),
                      width: 200.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 10.0,
                            child: Container(
                                height: 160.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        near[index].name,
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 6.0)
                                ]),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: 180.0,
                                    width: 200.0,
                                    image: AssetImage(near[index].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),);
              },
            ),
          ),
        ],
      ),
    );
  }
}
