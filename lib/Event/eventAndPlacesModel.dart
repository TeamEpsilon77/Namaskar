
import 'package:flutter_login_page/Events/Ghodejatra.dart';
import 'package:flutter_login_page/Events/Gyalpo_Lhosar.dart';
import 'package:flutter_login_page/Events/Holi.dart';
import 'package:flutter_login_page/Events/Patan.dart';
import 'package:flutter_login_page/Events/Ram_nawami.dart';
import 'package:flutter_login_page/Events/Shiva.dart';
import 'package:flutter_login_page/Events/Shivaratri.dart';
import 'package:flutter_login_page/Events/Swyambhu.dart';
import 'package:flutter_login_page/Events/nawami.dart';

class Event {
  final int id;
  final String name;
  final String imageUrl;
  final String imageUrl1;
  final String imageUrl2;
  final String description;
  final String star;
  final events ;
  final details;

  Event({
    this.id,
    this.name,
    this.imageUrl,
    this.imageUrl1,
    this.imageUrl2,
    this.description,
    this.star,
    this.events,
    this.details,

  });
}

class Places {
  final int id;
  final String name;
  final String imageUrl;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String description;
  final String star;
  final details;

  Places({
    this.id,
    this.name,
    this.imageUrl,
    this.imageUrl1,
    this.imageUrl2,
    this.imageUrl3,
    this.imageUrl4,
    this.description,
    this.star,
    this.details,
  });
}

// EventS
final Event Shivaratri = Event(
  id: 1,
  name: 'MahaShivaratri',
  imageUrl1: "images/shiva3.jpg",
  imageUrl:'images/shiva2.jpg',
  imageUrl2:'images/shiva4.jpg',
 description: 'Lets Explore Shivaratri in Pashupatinath\n\nThe morning begins with devotees queuing up to reach the four entrance gates of the holy Pashupatinath. Hindus from all over the world have arrived days before the MahaShivaratri to worship Lord Shiva, on what is considered his special day. Shiva Ratri literally means the night of Lord Shiva or the night he himself was created by his own divine grace. This auspicious festival falls on the thirteen or fourteenth day of the waning moon in the month of (Falgun 9, 2076) or 21 February 2020. Devotees keep vigil, chant prayers, fast, do yoga, meditate or recite prayers to Shiva. Married Hindu women pray for their husband’s wellbeing while unmarried ones ask for a husband like Shiva.',
 // description: " The Shiv Puran relates a story of Maha Shivaratri's glory.In ancient times, a Bheel (forest inhabitant) named Gurudruha trudged through a forest to hunt deer. At night, without having sighted a single animal, he unknowingly climbed a bili tree on the banks of a lake. Later at night, a doe arrived to drink water. Gurudruha aimed his bow and arrow at her. While aiming, he unknowingly dropped some bili leaves and his drinking water below on a Shivaling. The deer then requested him to allow her to entrust her fawns to her husband, after which she would return. After much haggling he agreed. While awaiting her return, he stayed awake by aimlessly plucking leaves and dropping them below. Again they fell on the Shivaling. Thus he unknowingly performed its puja while remaining awake all night.Finally the doe returned with her family, She informed him that along with her, he'd have to kill her family too. As he aimed, some more leaves fluttered down on the Shivaling. The collective punya (spiritual merit) accrued from the puja performed unknowingly, eradicated all his sins. This purified his heart. Repenting his flawed life of sin, he set the deer free. As he sat repenting, Lord Shiv manifested in front of him and granted a boon, \"You shall be born in a town known as Shrungver, as a man named Gruha. Lord Vishnu will grace your home as Lord Rama and redeem you\". Shivji also blessed the deer which attained a better destiny.",
  star: "4.3",
  events: Pashupati(),
  details:Shiva(),
);
final Event Gyalpo_Lhosar = Event(
  id: 2,
  name: 'Gyalpo Lhosar',
  imageUrl: 'images/gyal1.jpg',
  imageUrl1: 'images/gyal2.jpg',
  imageUrl2: 'images/gyal3.jpg',
    description: "Gyalpo Lhosar is the celebration of Tibetan New Year.The Tibetan calendar is made up of twelve lunar months and Losar begins on the first day of the first month. The celebrations of Lhosar begins on the 29th day of the 12th month of the calendar.This lhosar is celebrated in Nepal mostly by Sherpa, Tamang, Bhutia and Yolmo. Different communities and different places have their own way of celebration.Gyalpo Lhosar is celebrated for almost 2 weeks. \n\nThe main celebrations take place during first three days.On the first day beverage called changkol is made from chhaang (a Tibetan cousin of beer).\nThe second day is called Gyalpo Lhosar. This is the main New Year Day.\nThird day people get together and have feasts.Many traditional ceremonial dances representing the struggle between demon and god are performed in the Monasteries. Mantras are chanted and fire torches are passed among all the people in the crowd.  A traditional dance representing battle between deer and King is performed.ne day before the main day of new years. The houses are cleaned, specially the kitchen. Chimneys are also cleaned from inside.Special dishes are cooked. One of the most important dishes is the soup. This soup is made from meat, wheat, rice, sweet potato, cheese, peas, green pepper, vermicelli noodles and radish.This soup is served with special type of dumpling. Sometimes, different hidden items are used in fillings for the dumplings. The items are chilies, wood, paper and pebbles. People comment on the nature (character) of the person on the findings inside his/her dumplings. If one finds wood means he has wooden heart, etc. This is done for fun.\n\nOn Main New Year day, people visit the monasteries, Chant mantras and give gifts to the monks. Firecrackers are fired to get rid of ill spirits. ",
  star: "4.0",
  events: Gyalpo(),
);
final Event Ghodejatra = Event(
  id: 3,
  name: 'Ghodejatra',
  imageUrl: 'images/Ghodejatra.jpg',
  imageUrl1: 'images/gh1.jpg',
  imageUrl2: 'images/gh2.jpg',
    description: "A grand horse parade takes place at Tundikhel, the central point of the city where many events take place. Legend has it that the demon Tundi was killed here. Ghode Jatra, the Horse Racing Day falls in mid-March or early April (March 17, this year).Tundi had terrorized people for a long time until one day he was slain and people rejoiced by riding horses over his body. So it's believed that the clamor of horses' hooves at Tundikhel during the festival of Ghode Jatra keeps the demon's sprit at bay as it is believed he is still a threat to the city. ",
  star: "3.9",
  events:ghodejatra(),
);
final Event Holi = Event(
  id: 4,
  name: 'Holi',
  imageUrl: 'images/Holi.jpg',
    imageUrl1: 'images/holi1.jpg',
    imageUrl2: 'images/holi2.jpg',
    description: "Lets Start With The Introduction\n\nHoli is considered as one of the most revered and celebrated festivals of India and it is celebrated in almost every part of the country. It is also sometimes called as the “festival of love” as on this day people get to unite together forgetting all resentments and all types of bad feeling towards each other. The great Indian festival lasts for a day and a night, which starts in the evening of Purnima or the Full Moon Day in the month of Falgun. It is celebrated with the name Holika Dahan or Choti Holi on first evening of the festival and the following day is called Holi. In different parts of the country it is known with different names.\n\nThe vibrancy of colors is something that brings in a lot of positivity in our lives and Holi being the festival of colours is actually a day worth rejoicing. Holi is a famous Hindu festival that is celebrated in every part of India with utmost joy and enthusiasm. The ritual starts by lighting up the bonfire one day before the day of Holi and this process symbolizes the triumph of good over the bad. On the day of Holi people play with colours with their friends and families and in evening they show love and respect to their close ones with Abeer.",
  star: "4.4",
    events: Holii(),
);
final Event Ramnawami = Event(
  id: 5,
  name: 'Ramnawami',
  imageUrl: 'images/Ramnawami.jpeg',
  imageUrl1: 'images/ram1.jpg',
  imageUrl2: 'images/ram.jpg',
    description: "Lets Start With Janakpur\n\nJanakpur is a sight you cannot miss on that day.A steady stream of pilgrims file in through the gatehouse to worship the Sita statue in the inner sanctum. Women are draped in their best looking colorful saris, looking as beautiful as the Janaki Temple itself, for this auspicious occasion. Early evening is the most atmospheric time to visit. The temple is decorated with colourful lights and pilgrims arrive en masse. You never know what you might see here! In the meantime, the beautiful architecture of the temple will keep you occupied. All the sixty rooms in this three storied temple are decorated with the flag of Nepal.",
  star: "4.1",
  events: Raamnawami(),
  details:Navami(),
);


// places
final Places Bouddhanath = Places(
  id: 3,
  name: 'Bouddhanath',
  imageUrl: 'images/boudhanath.jpg',
    imageUrl1: 'images/bou1.jpeg',
    imageUrl2: 'images/bou2.jpg',
    imageUrl3: 'images/bou3.jpg',
    imageUrl4: 'images/bou4.jpg',
    description: "Lets Start With The Story\n\nThe story about the Bouddha Stupa is important, and it is incredibly inspiring. Hearing it, you will really understand the benefits of circumambulating it, cleaning it, and sweeping it the whole day and night.\n\nThe stupa was built by a mother, Jadzima, who looked after her chickens. They were an extremely poor family, I think. She wanted to build a stupa very, very much, so she asked the king of Nepal for permission to get the land. Normally, the king wouldn’t give such permission, but somehow, maybe due to her karma, the king said, “Okay, it can be done.” This just slipped out of his mouth.\n\nThis is why the Tibetans call it “Jarung Kashor Chörten.” Jarung is “it can be done,” and kashor is “slipped out of the mouth.” That’s the name of the Bouddhanath Stupa. Chörten means stupa.\n\nThe mother passed away after she completed up to the vase, the dome-like structure. She had four sons, and they completed the rest of the stupa. After they finished it, they all stood up in front of it and made prayers. Everyone generated a wish. When they were praying, all the buddhas and bodhisattvas absorbed into the stupa, which is why the name of the stupa is also “All-Encompassing.”\n\nIt’s also called wish-fulfilling. Why? Because it is so powerful that the wishes of anybody who makes prayers to the stupa are fulfilled. Especially when you see the stupa for the very first time, whatever you pray for, it will succeed. Even from the airplane; the first time you see it, you must do your best prayer.\n\nOne Brazilian nun, a Kagyu, knew this story. When she saw the stupa for the first time, she made a prayer to be able to build monasteries. When she went back, everything happened. She made plans and was able to build. There are other stories like this.\n\nAnyway, when the brothers were standing in front of the stupa, the oldest brother made a prayer, “May I become a Dharma king in Tibet, the Snow Land.” The next brother heard his prayer and said, “May I become a minister to help him spread the Dharma.” The next son made the prayer, “May I be an abbot to pass on the lineage of ordinations in Tibet.” And the next one made a prayer, “May I become a powerful yogi when there are obstacles to spreading Dharma in Tibet.”\n\nIn the next life, then, the oldest brother became the Dharma king Songtsen Gampo in Tibet; he was the Dharma king who had two princesses who brought the statues of Shakyamuni Buddha – one is now at the Jokhang and the other at the Ramoche. He did great activities to benefit all sentient beings, and I think he also helped to build the Jokhang. The second brother became a minister in Tibet [Padma Gungtsen]. The third brother became an abbot [Shantarakshita], and the fourth brother became Padmasambhava.\n\nWhen they were building the first monastery in central Tibet, Samye, during the day the people would build and then at night spirits would tear it down. One of the ministers suggested that they invite Padmasambhava from India. When he came he manifested as a deity called, I think, “Controlling the Three Realms.” This deity hooked the spirits and subdued them, making them pledge to become Dharma protectors. So they stayed around him on the mountain to protect the Dharma in Tibet.\n\nTherefore, Mahayana Buddhism in Tibet has spread and been preserved for many years, and so many beings have actualized the path and become enlightened. And because of this, Tibetan Mahayana Buddhism has spread all over the world. Even in the West, many tens of thousands of people every year are able to follow the path to enlightenment, make their lives meaningful, and find peace and happiness. Including us: we have the chance to practice the lam-rim and are able to do purification every day, thus becoming closer and closer to liberation from samsara and enlightenment by collecting the three principal aspects of the path to enlightenment and, on top of that, the tantric stages to allow us to achieve enlightenment quickly.\n\nAll these opportunities that we and many others have in our everyday life, all this benefit, has come from Bouddha Stupa.",
  star: "4.3"
);
final Places Pashupatinath = Places(
  id: 1,
  name: 'Pashupatinath',
  imageUrl: 'images/pas.png',
  imageUrl1:'images/pas1.jpg',
  imageUrl2:'images/pas2.jpeg',
  imageUrl3: 'images/pas3.jpg',
  imageUrl4:'images/pas4.jpg',
    description: 'The Pashupatinath Temple (Nepali: पशुपतिनाथ मन्दिर) is a famous and sacred Hindu temple complex that is located on the banks of the Bagmati River, approximately 5 km north-east of Kathmandu in the eastern part of Kathmandu Valley, the capital of Nepal. The temple serves as the seat of Pashupatinath.'
  +'This temple complex was inscribed on the UNESCO World Heritage Sites\'s list in 1979. This "extensive Hindu temple precinct" is a "sprawling collection of temples, ashrams, images and inscriptions raised over the centuries along the banks of the sacred Bagmati river" and is included as one of the seven monument groups in UNESCO\'s designation of Kathmandu Valley as visit here.',
  star: "4.7",
);
final Places Swyambhunath = Places(
  id: 2,
  name: 'Swyambhunath',
  imageUrl: 'images/swyam.jpg',
  imageUrl1: 'images/swyam1.jpg',
  imageUrl2: 'images/swyam2.jpg',
  imageUrl3: 'images/swyam3.jpg',
  imageUrl4: 'images/swyam4.jpg',
    description: "Lets Meet Monkeys in Swyambhu\n\nSwayambhu literally means \"self-existent one\". Believed to date back to 460 A.D., it was built by King Manadeva and by the 13th century, it had become an important center of Buddhism. Legend has it that Swayambhu was born out of a lotus flower that bloomed in the middle of a lake that once spread across the Kathmandu Valley once was. The largest image of the Sakyamuni Buddha in Nepal sits on a high pedestal on the western boundary of Swayambhu beside the Ring Road. Behind the hilltop is a temple dedicated to Manjusri or Saraswati - the Goddess of learning. Chaityas, statues and shrines of Buddhist and Hindu deities fill the stupa complex. The base of the hill is almost entirely surrounded by prayer wheels and deities. Devotees can be seen circumambulating the stupa at all times.",
  star: "3.9",
  details:Swyambhu(),
);
final Places Basantapur = Places(
  id: 4,
  name: 'Basantapur',
  imageUrl: 'images/basantapur.jpg',
  imageUrl1: 'images/bas1.jpg',
  imageUrl2: 'images/bas2.jpeg',
  imageUrl3: 'images/bas3.jpg',
  imageUrl4: 'images/bas4.jpg',
    description: " Lets Start with an Article\n\nA quite oasis amidst the rush of the city, this place projects a beautiful intermingling of the ancient culture and the modern way of living. Kathmandu Durbar Square or Basantapur Durbar Chetra is located at the center of the city and is one of the three royal palaces (Durbar Square) in the Kathmandu valley. This area held the palaces of Malla and Shah Kings who ruled over the city. Now, it is a popular destination for national as well as international tourists.\n\n“It is extremely humbling to see people find happiness in small things and gather the courage to earn their livelihood even after the destructive earthquake,” says Malar, 28, a Malaysian tourist. The place is surrounded by Hindu and the Buddhist temples. Most of the monuments seem to date from the 15th to the 18th century and comprises of beautifully embellished exteriors and brilliantly carved wooden architecture.\n\nThe chanting of the prayers and the sound of the temple bell seem to wake this place up early in the morning. The strong belief in culture and tradition among the residents of the Kathmandu valley can be clearly observed in this area. Youngsters can often be spotted enjoying the afternoon sun and taking photographs with their friends.\n\n“We wanted a place to go to after classes and this seemed like the perfect one,” says Shrishti KC who seemed to be enjoying the company of her friends. The center of attraction of this place will definitely be Kumari, the Living Goddess of Nepal. Numerous tourists are gathered everyday around the courtyard of ‘Kumari Ghar’ which is a three story brick building beautifully decorated with wooden carving of numerous gods and goddesses. Nepali artists don’t mind spending an entire day in this hassle free area exploring their creativity and admiring the beautiful heritage.\n\n“I came here from Pokhara for a workshop,” said Man Sunwar who is an artist and a painter. “The beauty of this place cannot be defined in words, the more time I spend there the more exciting it gets,” he added.\n\n Gautam Shakya is a shopkeeper and has been selling goods in this area for more than twenty years now. He, however, seems to be disappointed with the government for not rebuilding this area after the earthquake of 2015. “They have not even reconstructed one monument,” he exclaims sadly. “These monuments are UNESCO World Heritage sites and great sources of income for Nepal. I do not understand why the government is not taking a serious note of this,” he adds. Happily speaking in Mandarin with her Chinese customers, Goma Budathoki, who sells junk jewelries and singing bowls on the streets of Basantapur, tells us that she learnt English and Mandarin from her customers. According to her, the influx of the tourists has definitely been less after the earthquake, however this business is helping her educate her children and she is extremely satisfied. “Nepalis often tend to litter this place with plastic wrappers while the tourists seem to have better sense and look for a dustbin,” says Sunita Duha, a municipal sweeper.  ",
    star:"4.5",
);
final Places Patan_Dhoka = Places(
  id: 5,
  name: 'Patan Durbar Square',
  imageUrl: 'images/patan.jpeg',
  imageUrl1: 'images/patan1.jpg',
  imageUrl2: 'images/patan2.jpg',
  imageUrl3: 'images/patan3.jpg',
  imageUrl4: 'images/patan4.jpeg',
    description: 'Patan Durbar Square is situated at the centre of the city of Lalitpur in Nepal. It is one of the three Durbar Squares in the Kathmandu Valley, all of which are UNESCO World Heritage Sites. One of its attraction is the ancient royal palace where the Malla Kings of Lalitpur resided.\n\n'
  +'The Durbar Square is a marvel of Newar architecture. The square floor is tiled with red bricks. There are many temples and idols in the area. The main temples are aligned opposite of the western face of the palace.'
  +'The entrance of the temples faces east, towards the palace. There is also a bell situated in the alignment beside the main temples. The Square also holds old Newari residential houses.'
  +'There are other temples and structures in and around Patan Durbar Square built by the Newa People. A center of both Hinduism and Buddhism, Patan Durbar Square has 136 "bahals" (courtyards) and 55 major temples.',
  star: "4.3",
  details:Patan(),
);

// FAVORITE Events
List<Event> upComing = [Shivaratri, Gyalpo_Lhosar, Ghodejatra, Holi, Ramnawami,];
// places on ktm
List<Places> near = [Pashupatinath, Patan_Dhoka, Basantapur, Swyambhunath, Bouddhanath];

