import "package:flutter/material.dart";
import 'package:flutter_login_page/app_screens/event_model.dart';
import 'package:like_button/like_button.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Don't Miss Anything";


    return Scaffold(
            body: new ListView(

                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index], item: choices[index]),
                  );
                }
                )
            )
        );
  }
}

   List<Events> choices = <Events>[
     Events(
        name: "Shivaratri",
        location: "Pashupatinath Temple",
        date: "21 FEB",
        reviews: 80,
        rating: 4.4,
        image: "assets/a.jpg"),

     Events(
        name: "World Tantra Yoga Festival \n Sacred Pilgrimage",
        location: "Shanti Yoga Ashram Nepal",
        date: "21 FEB",
        reviews: 80,
        rating: 4.7,
        image: "assets/b.jpg"),
     Events(
        name: "Gyalpo Lhosar",
        location: "Bouddhanath",
        date: "29 FEB",
        reviews: 80,
        rating: 4.6,
        image: "assets/c.jpg"),
     Events(
        name: "Holi Festival",
        location: "Dharan",
        date: "09 MAR",
        reviews: 80,
        rating: 4.1,
        image: "assets/d.jpg"),
     Events(
        name: "Ghode Jatra",
        location: "Tudikhel,Kathmandu",
        date: "24 MAR",
        reviews: 80,
        rating: 4.0,
        image: "assets/d.png"),
    Events(
        name: "Cultural Tour of Nepal",
        location: "Starting from Kathmandu",
        date: "07-15 MAR",
        reviews: 80,
        rating: 4.9,
        image: "assets/f.jpg"),
    Events(
        name: "Bhaktapur Festival 2020",
        location: "Bhaktapur",
        date: "17-21 MAR",
        reviews: 80,
        rating: 4.4,
        image: "assets/g.jpg"),
     Events(
        name: "Rato Machhindranath Festival",
        location: "Rato Machhendranath Temple,Karyabinayak",
        date: "1 APR",
        reviews: 80,
        rating: 5.0,
        image: "assets/h.jpg"),
     Events(
        name: "Bisket Jatra",
        location: "Bhaktapur",
        date: "13 APR",
        reviews: 80,
        rating: 3.9,
        image: "assets/i.jpg"),
     Events(
        name: "Tiji Festival Trek",
        location: "Lo Manthang",
        date: "05 MAY",
        reviews: 80,
        rating: 4.0,
        image: "assets/j.jpg"),
     Events(
        name: "Bagh Bhairav Jatra",
        location: "Kirtipur",
        date: "17 AUG",
        reviews: 80,
        rating: 4.0,
        image: "assets/k.jpg"),
  ];



class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Events choice;
  final VoidCallback onTap;
  final Events item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),),
        elevation: 10,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ]),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      height: 275.0,
                      width: 360.0,
                      image:
                      AssetImage(choice.image),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),

            new Container(
              padding: EdgeInsets.only(left:10.0, right:10.0, top:10.0,bottom:10.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(choice.name, style: Theme.of(context).textTheme.title),
                    LikeButton(
                      onTap: onLikeButtonTapped,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.red : Colors.grey,
                        );
                      },
                      likeCount: 347,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color = isLiked ? Colors.red : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "love",
                            style: TextStyle(color: color),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                        return result;
                      },
                    ),
                  ]
                  ),
                  Text(choice.location, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                  Row(
                    children: <Widget>[
                      Text(choice.date, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 16, top: 8),
                      ),

                      SmoothStarRating(
                        allowHalfRating: true,
                        starCount: 5,
                        rating: choice.rating,
                        size: 20,
                        color: Colors.blue.shade900,
                        borderColor: Colors.black,
                      ),


                  ]

                  ),

                ],
              ),

            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }

}
class Events {
  final int id;
  final String name;
  final String location;
  final String image;
  final String date;
  final String day;
  final int reviews;
  final double rating;

  Events({
    this.id,
    this.name,
    this.location,
    this.image,
    this.date,
    this.day,
    this.rating,
    this.reviews,
  });


  }
