import"package:flutter/material.dart";

class Language extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: 500,
              height: 40,
              child: Text("Select your Language",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            ListTile(
              title: Text("English(US)",style: TextStyle(fontSize:20)),
              trailing: IconButton(icon: Icon(Icons.check)),
              onTap: () {
                debugPrint("Landscape tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}