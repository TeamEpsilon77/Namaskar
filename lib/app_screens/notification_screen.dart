import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotifyState();
  }
}

class NotifyState extends State<Notify>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: Text("This page is under construction",style: TextStyle(fontSize: 30),),
    ));
  }
}