import 'package:flutter/material.dart';
import 'package:flutter_login_page/Events/Shivaratri.dart';
import 'eventAndPlacesModel.dart';


class Detail extends StatefulWidget{
  final Event detail;
  Detail({this.detail});
  @override
  State<StatefulWidget> createState() {
    return EventDetailState();
  }
}

class EventDetailState extends State<Detail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:widget.detail.details,
    );
  }

}