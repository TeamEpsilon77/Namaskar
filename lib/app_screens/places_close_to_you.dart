import 'package:flutter/material.dart';
import 'package:namaskar_app/app_screens/event_model.dart';
import 'package:namaskar_app/location_services/map_screen.dart';

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
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child:Image(
                  image: AssetImage(widget.around.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 10.0 - 10,
                right: 20,
                child: ScaleTransition(
                  alignment: Alignment.center,
                  scale: CurvedAnimation(
                      parent: animationController, curve: Curves.fastOutSlowIn),
                  child: Card(
                    color: Colors.indigo,
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
            height: 42.0,
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
               padding: EdgeInsets.only(left:45.0,right:45.0),
           child: RaisedButton(
                      color: Colors.indigo,
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
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),)
        ],
      ),
    );
  }
}