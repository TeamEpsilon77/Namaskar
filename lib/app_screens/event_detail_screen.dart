import 'package:flutter/material.dart';
import 'package:namaskar_app/app_screens/event_model.dart';

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
      body: Text("Welcome to "+widget.detail.name),
    );
  }

}