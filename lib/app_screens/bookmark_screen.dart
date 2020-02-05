import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookmarkState();
  }
}

class BookmarkState extends State<Bookmark>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: Text("This page is under construction",style: TextStyle(fontSize: 30),),
    ));
  }
}