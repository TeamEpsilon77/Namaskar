import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:TextField(
        decoration: InputDecoration(
          hintText: 'Search Festivals,Events & places',
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
          suffixIcon: IconButton(
              icon: IconButton(
                icon: Icon(Icons.search,color: Colors.white,),
                onPressed: (){},
                iconSize: 30.0,
              )
          ),
        ),
      ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}