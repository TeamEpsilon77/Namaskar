import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_page/app_screens/navigation_home_screen.dart';
import 'package:flutter_login_page/components/screen/home.dart';

class Write extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Write> {
  Widget build(BuildContext context) {

    return Container(
            alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/write.png"),
            fit: BoxFit.cover,
          ),
        ),

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text("Welcome!!!\nWrite,Share And Win!!!",
                    style: TextStyle(color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'GreatVibes', fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none, ),
                    textAlign: TextAlign.center,
                  ),
                ),
                RaisedButton(
                  color: Colors.white,
                  child: Text("Lets Write...",
                    style: TextStyle(color: Colors.blue.shade900,
                      fontSize: 40.0,
                      fontFamily: 'GreatVibes',
                      /*fontWeight: FontWeight.w700*/),),
                  elevation: 6.0,
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page()),
                  );},),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Text("This is your land!!!\n Write a blog on the cultural events you attended or you want to attend and post it on any social media with #Namaskar and get a chance to win exciting gift hampers and oppurtunity to participate in the Nepali Family Wedding!!!",
                    style: TextStyle(color: Colors.white,
                      fontSize: 23.0,
                      fontFamily: 'GreatVibes', fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none, ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ));
  }
}
