import 'file:///C:/Users/Hyphen/AndroidStudioProjects/namaskaar/lib/home.dart';
import 'package:flutter/material.dart';

import 'getstarted.dart';

class Head extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("नमस्कार",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black,
            fontFamily: 'Laila',
            fontSize: 30.0,
          ),
        ),
          backgroundColor: Color(4284246976),
        ),
            body: Getstarted()
    );
  }
}

