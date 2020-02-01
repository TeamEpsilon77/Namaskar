
class Event {
  final int id;
  final String name;
  final String imageUrl;

  Event({
    this.id,
    this.name,
    this.imageUrl,
  });
}

class Places {
  final int id;
  final String name;
  final String imageUrl;

  Places({
    this.id,
    this.name,
    this.imageUrl,
  });
}

// EventS
final Event Shivaratri = Event(
  id: 1,
  name: 'Shivaratri',
  imageUrl: "images/Shivaratri.jpg",
);
final Event Gyalpo_Lhosar = Event(
  id: 2,
  name: 'Gyalpo Lhosar',
  imageUrl: 'images/Gyalpo_lhosar.jpg',
);
final Event Ghodejatra = Event(
  id: 3,
  name: 'Ghodejatra',
  imageUrl: 'images/Ghodejatra.jpg',
);
final Event Holi = Event(
  id: 4,
  name: 'Holi',
  imageUrl: 'images/Holi.jpg',
);
final Event Ramnawami = Event(
  id: 5,
  name: 'Ramnawami',
  imageUrl: 'images/Ramnawami.jpeg',
);


// places
final Places Bouddhanath = Places(
  id: 1,
  name: 'Bouddhanath',
  imageUrl: 'images/boudhanath.jpg',
);
final Places Pashupatinath = Places(
  id: 2,
  name: 'Pashupatinath',
  imageUrl: 'images/pas.png',
);
final Places Banglamukhi = Places(
  id: 3,
  name: 'Banglamukhi',
  imageUrl: 'images/banglamukhi.jpg',
);
final Places Basantapur = Places(
  id: 4,
  name: 'Basantapur',
  imageUrl: 'images/basantapur.jpg',
);
final Places Patan_Dhoka = Places(
  id: 5,
  name: 'Patan Dhoka',
  imageUrl: 'images/patan.jpeg',
);

// FAVORITE Events
List<Event> upComing = [Shivaratri, Gyalpo_Lhosar, Ghodejatra, Holi, Ramnawami,];
// places on ktm
List<Places> near = [Patan_Dhoka, Basantapur, Banglamukhi, Pashupatinath, Bouddhanath];

