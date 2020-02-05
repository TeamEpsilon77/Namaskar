import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_screen.dart';

class ReportProblem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportProblemState();
  }
}


class ReportProblemState extends State<ReportProblem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );},),
          title: Text(
            "Report a Problem",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child:Column(
            children: <Widget>[
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Please, Let us know about your problem.",
                  border: OutlineInputBorder(),
                )
              ),
              RaisedButton(
                color: Colors.indigo,
                onPressed: (){},

                child: Text("Submit",style: TextStyle(fontSize:16,color: Colors.white),),


              )
            ],
          )
        )
    );
  }
}