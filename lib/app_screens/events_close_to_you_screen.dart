import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:namaskar_app/app_screens/event_model.dart';

class EventScreen extends StatefulWidget{
  final Event upcoming;
  EventScreen({this.upcoming});
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
                  image: AssetImage(widget.upcoming.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,top: 20.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.indigo,),
                  iconSize: 30.0,
                  onPressed: (){ Navigator.pop(
                    context,
                  );},),),
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
            child:  Text(widget.upcoming.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.0),
            child:Text(widget.upcoming.description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),)
        ],
      ),
    );
  }
}