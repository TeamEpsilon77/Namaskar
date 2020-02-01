import 'package:namaskar_app/app_screens/event_model.dart';

// EventS
final Event Shivaratri = Event(
  id: 1,
  name: 'Shivaratri',
  imageUrl: 'assets/images/Shivarati.jpg',
);
final Event Gyalpo_Lhosar = Event(
  id: 2,
  name: 'Gyalpo Lhosar',
  imageUrl: 'assets/images/Gyalpo_lhosar.jpg',
);
final Event Ghodejatra = Event(
  id: 3,
  name: 'Ghodejatra',
  imageUrl: 'assets/images/Ghodejatra.jpg',
);
final Event Holi = Event(
  id: 4,
  name: 'Holi',
  imageUrl: 'assets/images/Holi.jpg',
);
final Event Ramnawami = Event(
  id: 5,
  name: 'Ramnawami',
  imageUrl: 'assets/images/Ramnawami.jpeg',
);


// places
final Places Bouddhanath = Places(
  id: 1,
  name: 'Bouddhanath',
  imageUrl: 'assets/images/Shivarati.jpg',
);
final Places Pashupatinath = Places(
  id: 2,
  name: 'Pashupatinath',
  imageUrl: 'assets/images/Gyalpo_lhosar.jpg',
);
final Places Banglamukhi = Places(
  id: 3,
  name: 'Banglamukhi',
  imageUrl: 'assets/images/Ghodejatra.jpg',
);
final Places Basantapur = Places(
  id: 4,
  name: 'Basantapur',
  imageUrl: 'assets/images/Holi.jpg',
);
final Places Patan_Dhoka = Places(
  id: 5,
  name: 'Patan Dhoka',
  imageUrl: 'assets/images/Ramnawami.jpeg',
);

// FAVORITE Events
List<Event> upComing = [Shivaratri, Gyalpo_Lhosar, Ghodejatra, Holi, Ramnawami,];
// places on ktm
List<Places> near = [Patan_Dhoka, Basantapur, Banglamukhi, Pashupatinath, Bouddhanath];

