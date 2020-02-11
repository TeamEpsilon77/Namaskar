import"package:flutter/material.dart";

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Image.asset('assets/logo.png'),
            ),
            ListTile(
              title: Text("\tNamaskar is a platform to explore the culture and traditions of Nepal on the basis of your interest. You can discover events and places, and get directions from your current location. Under each event, you can find description of the festival, its history and details of the event being organized. Under the places section, you have a brief description about that place. We have a section showing a list of upcoming events. You can favorite the events you are interested in. You can write notes and keep your memo in the bookmark section. We have a section where you can write your experiences and win exciting prizes. If you have any issues in the app, please give us feedback in the feedback section.",style: TextStyle(fontSize:20),),
            ),

            ListTile(
              title: Text("\n\n\nTo contact us\nEmail: info@namaskar.page",style: TextStyle(fontSize:20)),
            ),
          ],
        ),
      ),
    );
  }
}