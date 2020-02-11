import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page/Events/placedetails.dart';

import 'eventAndPlacesModel.dart';
import '../app_screens/map _screen.dart';

class PlaceScreen extends StatefulWidget{
  final Places around ;
  PlaceScreen({this.around});
  @override
  State<StatefulWidget> createState() {
    return PlaceScreenState();
  }
}

class PlaceScreenState extends State<PlaceScreen>  with TickerProviderStateMixin {
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
         widget.around.name,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: <Widget>[
          Container(
          height: 250,
          child:Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage(widget.around.imageUrl),
              AssetImage(widget.around.imageUrl1),
              AssetImage(widget.around.imageUrl2),
              AssetImage(widget.around.imageUrl3),
              AssetImage(widget.around.imageUrl4),
            ],
            dotSpacing: 10.0,
            dotSize: 1.0,
          )
      ),

          Container(
            height: 48.0,
            width: 500.0,
            padding: EdgeInsets.all(7.0),
            child:  Text("Welcome to "+widget.around.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:18.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(widget.around.star,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          letterSpacing: 0.27,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                          icon:Icon(Icons.star,
                            color: Colors.grey,
                            size: 22,)

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
               padding: EdgeInsets.only(left:35.0,right:30.0),
           child: RaisedButton(
                      color: Colors.blue.shade900,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(_)=>MapScreen()));
                      },
                      child: Row(children: <Widget>[
                        IconButton(icon: Icon(Icons.public,size: 30,color: Colors.white,),),
                        Text("View "+widget.around.name+" on map",
                          style: TextStyle(fontSize:16,color: Colors.white,letterSpacing: 0.65),),
                       ],)
                    )
            ),
          Container(
            padding: EdgeInsets.only(top:15.0,left: 8.0,right: 7.0,bottom: 8.0),
            child:Text(widget.around.description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),),
          Center(
              child:FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>PDetail(detail: widget.around,)));
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