import 'package:flutter/material.dart';
import 'package:flutter_login_page/Event/eventAndPlacesModel.dart';


class PDetail extends StatefulWidget{
  final Places detail;
  PDetail({this.detail});
  @override
  State<StatefulWidget> createState() {
    return EventDetailState();
  }
}

class EventDetailState extends State<PDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:widget.detail.details,
    );
  }

}