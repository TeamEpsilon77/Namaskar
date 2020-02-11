import 'package:flutter/material.dart';
import 'package:flutter_login_page/Events/Shivaratri.dart';
import 'eventAndPlacesModel.dart';


class EventDetail extends StatefulWidget{
  final Event detail;
  EventDetail({this.detail});
  @override
  State<StatefulWidget> createState() {
    return EventDetailState();
  }
}

class EventDetailState extends State<EventDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: (){ Navigator.pop(
          context,
        );},),
        title: Text(
          "Events of "+widget.detail.name,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body:widget.detail.events,
    );
  }

}