
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

  class _FeedbackScreenState extends State<FeedbackScreen> {
  List<Item> items = List();
  Item item;
  DatabaseReference itemRef;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
  super.initState();
  item = Item("");
  final FirebaseDatabase database = FirebaseDatabase.instance; //Rather then just writing FirebaseDatabase(), get the instance.
  itemRef = database.reference().child('Feedback:');
  itemRef.onChildAdded.listen(_onEntryAdded);
  itemRef.onChildChanged.listen(_onEntryChanged);
  }

      _onEntryAdded(Event event) {
        setState(() {
          items.add(Item.fromSnapshot(event.snapshot));
        });
      }

      _onEntryChanged(Event event) {
        var old = items.singleWhere((entry) {
          return entry.key == event.snapshot.key;
        });
        setState(() {
      items[items.indexOf(old)] = Item.fromSnapshot(event.snapshot);
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
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        left: 16,
                        right: 16),
                    child: Image.asset('assets/images/feedbackImage.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Your FeedBack',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: const Text(
                      'Give your best time for this moment.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                Flexible(
                  flex: 0,
                     child: Center(
                      child: Form(
                           key: formKey,
                         child: Flex(
                          direction: Axis.vertical,
                          children: <Widget>[
                           ListTile(
                              leading: Icon(Icons.info),
                             title: TextFormField(
                               initialValue: '',
                                onSaved: (val) => item.feedback = val,
                                validator: (val) => val == "" ? val : null,
                            ),
                            ),
                            RaisedButton(child: Text("Send"),
                              onPressed: handleSubmit,
                              color: Colors.blue.shade900,
                              textColor: Colors.white,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              splashColor: Colors.grey,
                            )

                ],
              ),
            ),
          ),
        ),
          ]
      ),
    )
          )
          )
    )
    );



  }
}

class Item {
  String key;
  String feedback;

  Item(this.feedback);

  Item.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
      feedback = snapshot.value["feedback"];

  toJson() {
    return {
      "feedback":feedback,
    };
  }
}




