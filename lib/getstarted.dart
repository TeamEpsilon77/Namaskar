import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home.dart';
import 'package:flutter_login_page/head.dart';

import 'Signin.dart';

class Getstarted extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Getstarted> {
  Widget build(BuildContext context) {

    return Center(
        child: Container(
            alignment: Alignment.center,
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/mountain.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              //width: 400.0,
              //height: 100.0,
              //margin: EdgeInsets.only(top: 10.0),:
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text("Welcome\n to the \nCultural Paradise",
                    style: TextStyle(color: Colors.indigo,
                      fontSize: 40.0,
                      fontFamily: 'GreatVibes', fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none, ),
                    textAlign: TextAlign.center,
                  ),
                ),

                /* Text("Let's Begin",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.pinkAccent,
                  fontSize: 40.0,
                  fontFamily: 'GreatVibes',
                  decoration: TextDecoration.none),
            ),
           */
                // QuoteImage(),
                GetStarted()
              ],
            )));
  }
}

class QuoteImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/APNT1I.jpg');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
    return Container(child: image,);
  }
}

// ignore: must_be_immutable
class GetStarted extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.indigo,
          child: Text("Get Started",
            style: TextStyle(color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),),
          elevation: 6.0,
          onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homes()),
          );},),
    );
  }

}