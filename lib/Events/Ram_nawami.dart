import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';

class Raamnawami extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Raamnawami> {
  List<Item> nawami = List();
  Item item;
  DatabaseReference itemRef;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    item = Item("", "");
    final FirebaseDatabase database = FirebaseDatabase.instance; //Rather then just writing FirebaseDatabase(), get the instance.
    itemRef = database.reference().child('nawami');
    itemRef.onChildAdded.listen(_onEntryAdded);
    itemRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event) {
    setState(() {
      nawami.add(Item.fromSnapshot(event.snapshot));
    });
  }

  _onEntryChanged(Event event) {
    var old = nawami.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });
    setState(() {
      nawami[nawami.indexOf(old)] = Item.fromSnapshot(event.snapshot);
    });
  }

  void handleSubmit() {
    final FormState form = formKey.currentState;

    if (form.validate()) {
      form.save();
      form.reset();
      itemRef.push().set(item.toJson());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: FirebaseAnimatedList(
              query: itemRef,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return new Container(
                  padding: const EdgeInsets.only(left: 4, right: 4, top: 20, bottom: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: const Offset(4, 4),
                          blurRadius: 8),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      padding:
                      const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                      constraints: const BoxConstraints(minHeight: 80, maxHeight: 400),
                      color: Colors.white,
                      child:new ListTile(
                        title:  Text(
                          nawami[index].title,
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                        subtitle:  Text(
                          nawami[index].body,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),

                    ),
                  ),
                );

              },
            ),
          ),
          Flexible(
            flex: 0,
              child: Container(
                child: RaisedButton(
                  color: Colors.blue.shade900,
                  textColor: Colors.white,
                  onPressed: show,
                  child: const Text(
                      'Update the Events You Know',
                      style: TextStyle(
                          fontSize: 20)
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
  void show() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text(
              'You can update the Culural Events Near to You And Promote Visit_Nepal2020 Culturally Through Our App'),
          content: new SingleChildScrollView(
              child: new Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(
                              0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Form(
                  key: formKey,
                  child: Flex(

                    direction: Axis.vertical,
                    children: <Widget>[
                      ListTile(
                        title: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'What Event?',
                          ),
                          initialValue: "",
                          onSaved: (val) => item.title = val,
                          validator: (val) => val == "" ? val : null,
                        ),
                      ),
                      ListTile(
                        title: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'When and Where?',
                          ),
                          initialValue: '',
                          onSaved: (val) => item.body = val,
                          validator: (val) => val == "" ? val : null,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                            Icons.send),
                        onPressed: () {
                          handleSubmit(
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
          ),
        );
      },
    );
  }

}

class Item {
  String key;
  String title;
  String body;


  Item(this.title, this.body);

  Item.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        title = snapshot.value["title"],
        body = snapshot.value["body"];

  toJson() {
    return {
      "title": title,
      "body": body,
    };
  }
}
