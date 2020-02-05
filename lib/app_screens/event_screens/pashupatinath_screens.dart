import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PasuPati extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PasuPatiState();
  }
}

class PasuPatiState extends State<PasuPati> {
  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel =Container(
      height: 250,
      child: Carousel(
        images: [
          AssetImage('images/pas.png'),
          AssetImage('images/pas1.jpg'),
          AssetImage('images/pas2.jpeg'),
          AssetImage('images/pas3.jpg'),
          AssetImage('images/pas4.jpg'),
        ],
        dotSize: 4,
      ),
    );
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
      title: Text(
        "Pashupatinath",
        style: TextStyle(
          fontSize: 25.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.indigo,
    ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
        ],
      ),
    );
  }
}
