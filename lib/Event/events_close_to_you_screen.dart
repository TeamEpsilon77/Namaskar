import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'details.dart';
import 'eventAndPlacesModel.dart';
import 'event_detail_screen.dart';


class EventScreen extends StatefulWidget{
  final Event upcoming;
  EventScreen({this.upcoming,});
  @override
  State<StatefulWidget> createState() {
    return EventScreenState();
  }
}

class EventScreenState extends State<EventScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading:IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: (){ Navigator.pop(
          context,
        );},),
        title: Text(
          widget.upcoming.name,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 280,
                  child:Carousel(
                    boxFit: BoxFit.fill,
                    images: [
                      AssetImage(widget.upcoming.imageUrl),
                      AssetImage(widget.upcoming.imageUrl1),
                      AssetImage(widget.upcoming.imageUrl2),
                    ],
                    dotSpacing: 10.0,
                    dotSize: 1.0,
                  )
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 10.0 - 10,
                right: 20,
                child: ScaleTransition(
                  alignment: Alignment.center,
                  scale: CurvedAnimation(
                      parent: animationController, curve: Curves.fastOutSlowIn),
                  child: Card(
                    color: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    elevation: 10.0,
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 45.0,
            width: 500.0,
            padding: EdgeInsets.all(7.0),
            child:  Text("Welcome to "+widget.upcoming.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(widget.upcoming.star,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          letterSpacing: 0.27,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                          icon:Icon(Icons.favorite,
                            color: Colors.grey,
                            size: 22,)

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(left:30.0,right:30.0),
             child:RaisedButton(
               color: Colors.blue.shade900,
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>EventDetail(detail: widget.upcoming,)));
               },
               child:Text("Events of "+widget.upcoming.name,
                 style: TextStyle(fontSize:16,color: Colors.white,letterSpacing: 0.65),),
             ),
              ),


          Container(
            padding: EdgeInsets.only(top:15.0,left: 8.0,right: 7.0,bottom: 8.0),
            child:Text(widget.upcoming.description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),),
          Center(
          child:FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Detail(detail: widget.upcoming,)));
            },
            child: Text(
              "More...",
                  style:TextStyle(fontSize:14,color: Colors.blue.shade900,letterSpacing: 0.65),
            ),

          )
          )
        ],
      ),
    );
  }
}