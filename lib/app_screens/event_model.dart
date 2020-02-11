
class Event {
  final String name;
  final String location;
  final String image;
  final String date;
  final String day;
  final int reviews;
  final double rating;

  Event({
    this.name,
    this.location,
    this.image,
    this.date,
    this.day,
    this.rating,
    this.reviews,
  });

  static List<Event> choices = <Event>[
        new Event(
            name: "Shivaratri",
            location: "Pashupatinath Temple",
            date: "14 FEB",
            reviews: 80,
            rating: 4.4,
            image: "assets/shivaratri.jfif"),

        new Event(
            name: "World Tantra Yoga Festival and Sacred Pilgrimage",
            location: "Shanti Yoga Ashram Nepal",
            date: "21 FEB",
            reviews: 80,
            rating: 4.4,
            image: "assets/yoga.jfif"),
        new Event(
            name: "Gyalpo Lhosar",
            location: "Bouddhanath",
            date: "29 FEB",
            reviews: 80,
            rating: 4.4,
            image: "assets/gyalpo.jpg"),
        new Event(
            name: "Holi Festival",
            location: "Dharan",
            date: "09 MAR",
            reviews: 80,
            rating: 4.4,
            image: "assets/hol.jfif"),
        new Event(
            name: "Ghode Jatra",
            location: "Tudikhel,Kathmandu",
            date: "24 MAR",
            reviews: 80,
            rating: 4.4,
            image: "assets/ghodejatra.jfif"),
        new Event(
            name: "Cultural Tour of Nepal",
            location: "Starting from Kathmandu",
            date: "07-15 MAR",
            reviews: 80,
            rating: 4.4,
            image: "assets/culture.jfif"),
        new Event(
            name: "Bhaktapur Festival 2020",
            location: "Bhaktapur",
            date: "17-21 MAR",
            reviews: 80,
            rating: 4.4,
            image: "assets/bhaktapur.jfif"),
        new Event(
            name: "Rato Machhindranath Festival",
            location: "Rato Machhendranath Temple,Karyabinayak",
            date: "1 APR",
            reviews: 80,
            rating: 4.4,
            image: "assets/rato.jfif"),
            new Event(
            name: "Bisket Jatra",
            location: "Bhaktapur",
            date: "13 APR",
                reviews: 80,
                rating: 4.4,
            image: "assets/bisket.jfif"),
        new Event(
            name: "Tiji Festival Trek",
            location: "Lo Manthang",
            date: "05 MAY",
            reviews: 80,
            rating: 4.4,
            image: "assets/tiji.jfif"),
        new Event(
            name: "Bagh Bhairav Jatra",
            location: "Kirtipur",
            date: "17 AUG",
            reviews: 80,
            rating: 4.4,
            image: "assets/bhairav.jfif"),
  ];
}
