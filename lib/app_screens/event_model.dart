
class Event {
  final int id;
  final String name;
  final String imageUrl;
  final String description;

  Event({
    this.id,
    this.name,
    this.imageUrl,
    this.description,
  });
}

class Places {
  final int id;
  final String name;
  final String imageUrl;
  final String description;

  Places({
    this.id,
    this.name,
    this.imageUrl,
    this.description,
  });
}

// EventS
final Event Shivaratri = Event(
  id: 1,
  name: 'Shivaratri',
  imageUrl: "images/Shivaratri.jpg",
  description: " The Shiv Puran relates a story of Maha Shivaratri's glory.In ancient times, a Bheel (forest inhabitant) named Gurudruha trudged through a forest to hunt deer. At night, without having sighted a single animal, he unknowingly climbed a bili tree on the banks of a lake. Later at night, a doe arrived to drink water. Gurudruha aimed his bow and arrow at her. While aiming, he unknowingly dropped some bili leaves and his drinking water below on a Shivaling. The deer then requested him to allow her to entrust her fawns to her husband, after which she would return. After much haggling he agreed. While awaiting her return, he stayed awake by aimlessly plucking leaves and dropping them below. Again they fell on the Shivaling. Thus he unknowingly performed its puja while remaining awake all night.Finally the doe returned with her family, She informed him that along with her, he'd have to kill her family too. As he aimed, some more leaves fluttered down on the Shivaling. The collective punya (spiritual merit) accrued from the puja performed unknowingly, eradicated all his sins. This purified his heart. Repenting his flawed life of sin, he set the deer free. As he sat repenting, Lord Shiv manifested in front of him and granted a boon, \"You shall be born in a town known as Shrungver, as a man named Gruha. Lord Vishnu will grace your home as Lord Rama and redeem you\". Shivji also blessed the deer which attained a better destiny.",

);
final Event Gyalpo_Lhosar = Event(
  id: 2,
  name: 'Gyalpo Lhosar',
  imageUrl: 'images/Gyalpo_lhosar.jpg',
    description: "supriya le vanerai suneko ho yo festival maile...."
);
final Event Ghodejatra = Event(
  id: 3,
  name: 'Ghodejatra',
  imageUrl: 'images/Ghodejatra.jpg',
    description: "Kathmandu ko jatra ho re....aru kei tha xaina malai"
);
final Event Holi = Event(
  id: 4,
  name: 'Holi',
  imageUrl: 'images/Holi.jpg',
    description: "Jahile exam vako bela parxa ..tei vayera khelnai paidaina..."
);
final Event Ramnawami = Event(
  id: 5,
  name: 'Ramnawami',
  imageUrl: 'images/Ramnawami.jpeg',
    description: "Janakpur ma manauxan re ..na aafule ahile samma manako..kei tha xaina."
);


// places
final Places Bouddhanath = Places(
  id: 1,
  name: 'Bouddhanath',
  imageUrl: 'images/boudhanath.jpg',
    description: "Dherai tadha xa yaha baata janai jhyau lagxa."
);
final Places Pashupatinath = Places(
  id: 2,
  name: 'Pashupatinath',
  imageUrl: 'images/pas.png',
    description: "Atti khatra mandir exam aauna lako bela matra vetne garxam praye ani kasaiko birthday xa vane"
);
final Places Banglamukhi = Places(
  id: 3,
  name: 'Banglamukhi',
  imageUrl: 'images/banglamukhi.jpg',
    description: "yo mandir ka xa k xa tha xaina patan jastai hepiyeko mandir ho hami dwara."
);
final Places Basantapur = Places(
  id: 4,
  name: 'Basantapur',
  imageUrl: 'images/basantapur.jpg',
    description: "yaha haami dherai nai janxam ,ghumna,dating,ani daru hanna."
);
final Places Patan_Dhoka = Places(
  id: 5,
  name: 'Patan Dhoka',
  imageUrl: 'images/patan.jpeg',
    description: "Najik ko tirtha hela vanejhai yaha hami kahilai jadainam."
);

// FAVORITE Events
List<Event> upComing = [Shivaratri, Gyalpo_Lhosar, Ghodejatra, Holi, Ramnawami,];
// places on ktm
List<Places> near = [Patan_Dhoka, Basantapur, Banglamukhi, Pashupatinath, Bouddhanath];

