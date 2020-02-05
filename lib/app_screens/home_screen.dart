import 'package:flutter/material.dart';
import 'package:namaskar_app/app_screens/event_model.dart';
import 'package:namaskar_app/app_screens/events_close_to_you_screen.dart';
import 'package:namaskar_app/app_screens/setting_screen.dart';
import 'package:namaskar_app/app_screens/places_close_to_you.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return body();
  }
} //class

Widget body() {
  var column = Column(children: <Widget>[
    Container(
        child: Row(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(3.0),
                    color: Colors.indigo,
                    child: Text(
                      "Falgun 2076",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    )),
                Container(
                    padding: EdgeInsets.all(3.0),
                    color: Colors.indigo,
                    child: Text(
                      "18",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    )),
                Container(
                    padding: EdgeInsets.all(3.0),
                    color: Colors.indigo,
                    child: Text(
                      "Saturday",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    )),
                Container(
                    padding: EdgeInsets.all(3.0),
                    color: Colors.indigo,
                    child: Text(
                      "February 1, 2020",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )),
              ],
            )),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Today,it\'s',
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                ),
                Container(
                  child: Text(
                    '"Maghi"',
                    style: TextStyle(fontSize: 50.0, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    )),
    Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        '"Welcome to Lalitpur"',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ),
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
                  'Events Close to You',
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
                  onPressed: () {},
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>EventScreen(upcoming: upcoming)));
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
                  onPressed: () {},
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
