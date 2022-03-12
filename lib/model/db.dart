import 'package:flutter/material.dart';

Map firestore = {
  "Houses": [
    {
      "name": "Akhmadovs family",
      "rang": "9.6",
      "location": "Koratosh 12",
      "price": "40\$/day",
      "facilities": [
        "2 bedroom",
        "1 bathroom",
        "Kitchen",
      ],
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScP_k0wDwJ_oZR65r6wStBtnwJertWX1TAUA&usqp=CAU",
    },
    {
      "name": "Rustamovs family",
      "rang": "8.8",
      "location": "Chorsu 24",
      "price": "10\$/day",
      "facilities": [
        "1 bedroom",
        "1 bathroom",
      ],
      "image": "https://thumbs.dreamstime.com/z/uzbekistan-47435562.jpg",
    },
    {
      "name": "Gayradovs family",
      "rang": "8.2",
      "location": "Eski shahar 9",
      "price": "99\$/day",
      "facilities": ["2 bedroom", "2 bathroom", "Kitchen", "Living room"],
      "image":
          "data:image/jpeg;base64,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",
    },
    {
      "name": "Akhmedovs family",
      "rang": "9.8",
      "location": "Chilanzar 3",
      "price": "Free",
      "facilities": [
        "1 bedroom",
        "1 bathroom",
      ],
      "image":
          "https://i.pinimg.com/236x/5b/ac/e2/5bace28e898eaa0f3c8efcf64246152d.jpg",
    },
  ],
  "Villas": [
    {
      "name": "Oasis",
      "rang": "8.9",
      "location": "Хужа соат сарховуз 12",
      "price": "400\$/day",
      "facilities": [
        "3 separate bedrooms",
        "Living room",
        "Kitchen",
        "1 bathroom",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/332092205.jpg?k=3d086412291aaf74090b7c2275b7cb1da1b73e99dc6bce58bd57d0588325514d&o=&hp=1",
      "description":
          """Featuring accommodations with a balcony, Soy Oasis is located in Samarkand. This self-catered villa has a garden and free private parking.

The air-conditioned villa is composed of 3 separate bedrooms, a living room, a fully equipped kitchen, and 1 bathroom. A flat-screen TV is offered.

A à la carte breakfast is available each morning at the villa.
""",
    },
    {
      "name": "Deluxe House",
      "rang": "8.5",
      "location": "Мирабадский район Kohinur kochasi",
      "price": "297\$/day",
      "facilities": [
        "5 bedrooms",
        "Flat-screen TV",
        "Kitchen",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/323700057.jpg?k=937c4b998bbcf7ae845d22673375b336ffe650e13ca7a81810dd12999775ae7d&o=&hp=1",
      "description":
          """Located in Tashkent, Deluxe House in Center of City provides a private pool and free WiFi. This villa has accommodations with a terrace.

This air-conditioned villa features 5 bedrooms, a flat-screen TV, and a kitchen.

Guests can enjoy the indoor pool and garden at the villa.
""",
    },
    {
      "name": "Роза ветров",
      "rang": "9.2",
      "location": "Durmen' ul. Bogi Shamol 1",
      "price": "300\$/day",
      "facilities": [
        "3 bedrooms",
        "2 bathrooms",
        "A flat-screen TV",
        "Bed linen",
        "Kitchen",
        "Dining area",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/296502852.jpg?k=c20f10dc8d407915a1130b18911aab2b75d60d202b060ccbf602fe97b134e94d&o=&hp=1",
      "description":
          """Located in Tashkent, Роза ветров provides accommodations with free WiFi, air conditioning, a restaurant and access to a garden with an outdoor pool. Featuring free private parking, the vacation home is in an area where guests can engage in activities such as hiking and skiing.

The vacation home comes with 3 bedrooms, 2 bathrooms, bed linen, towels, a flat-screen TV with satellite channels, a dining area, a fully equipped kitchen, and a balcony with garden views.

The vacation home offers a continental or à la carte breakfast.
""",
    },
    {
      "name": "Luxurious",
      "rang": "9.0",
      "location": "Mузей Тамары-Ханум, Central park",
      "price": "350\$/day",
      "facilities": [
        "3 bedrooms",
        "A flat-screen TV",
        "Kitchen",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/339359600.jpg?k=d1af861313ed880eb27c9e83a94dd8d0835676933489a334ef4771e824c985e9&o=&hp=1",
      "description":
          """Featuring accommodations with a terrace, Роскошная вилла is located in Tashkent. This self-catered villa has a garden and free private parking.

This air-conditioned villa comes with 3 bedrooms, a flat-screen TV, and a kitchen.

Kum is 12.9 km from the villa.
""",
    },
  ],
  "Hotels": [
    {
      "name": "Hyatt Regency Tashkent",
      "rang": "9.2",
      "location": "Navoi Street 1A",
      "price": "180\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        "Spa",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/87360561.jpg?k=e789167ac658d34bff56c5f134238e1e5d8782e7ee022f226e1af5392493253e&o=&hp=1",
      "description":
          """Hyatt Regency Tashkent offers accommodations in the heart of Tashkent. This luxury hotel offers restaurants, indoor swimming pool and free WiFi.

In the luxurious guest rooms, elegant furnishings and scenic views are offered. A seating area is featured in some rooms where guests can relax with a drink from the mini-bar while watching satellite TV.

Hyatt Regency's spa and fitness center has a modern gym. Spa services with a wide range of relaxing massages are also provided.

Mustaqillik Maydoni Metro Station is a 12-minute walk away. Tashkent International Airport is 4.3 mi from the Hyatt Regency Tashkent.

""",
    },
    {
      "name": "Hilton Tashkent City",
      "rang": "9.0",
      "location": "Islam Karimov Street 2, block 5",
      "price": "190\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Airport shuttle",
        "Fitness Center",
        "Free parking",
        "Bar",
        "Family rooms"
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/247363645.jpg?k=b12c058b74b9a434f672fea7c825cb90397a767c8d67b609c0d1a5575e985bf2&o=&hp=1",
      "description":
          """Located in Tashkent, Hilton Tashkent City has a bar and a terrace. Among the facilities of this property are a restaurant, indoor pool and a Pan-Asian rooftop restaurant with city views. The property offers a 24-hour front desk and room service, along with free WiFi throughout.

All rooms are equipped with air conditioning, mini-bar, free WiFi and flat-screen TV. A private bathroom comes with a separate walk-in rain shower and bath, hairdryer and slippers. Free toiletries are featured.

For dining options, Shosh Restaurant serves a daily buffet breakfast while Uzbek and international dishes are served at lunch. The Tumbler Bar, which locates on the terrace, serves traditional bar dishes. Lobby Lounge offers guests the opportunity to hold a business or friendly meeting over a cup of tea or coffee. City 21 Pan Asian Restaurant & Lounge is located on the 21st floor--the highest place in the city with a seasonal outdoor terrace, lounge bar and a separate room for a family or business dinner. The menu includes southeast Asian dishes, creative cocktails and alcoholic drinks.

Hilton Tashkent City Hotel provides 24-hour room service and fitness center. The spa and wellness center offers beauty treatments, massages and steam saunas. Meeting rooms are available for various events. There is also an Executive Lounge which serves free drinks and snacks throughout the day.

The property is about a 10-minute walk to Xalqlar Dostligi Metro Station. It is 4.3 mi from the airport and 3.1 mi from the train station.

""",
    },
    {
      "name": "City Palace Hotel Tashkent",
      "rang": " 8.0",
      "location": "Amir Temur Street 15",
      "price": "81\$/person",
      "facilities": [
        "2 swimming pools",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/176420461.jpg?k=f3e1fa7e649d691b50258d84a2b35b101e11365f393d073319d194eb8dc5c06d&o=&hp=1",
      "description":
          """City Palace Hotel Tashkent is 500 m from Emir Temur Square and Emir Timur Museum in the heart of Tashkent city center. Features include an outdoor pool, indoor pool, and free WiFi.

A mini-bar, seating area, and refrigerator are provided in each room as well as a satellite TV. City Palace Hotel Tashkent extras include an electric kettle, towels, and linen.

A restaurant is on site, and luggage storage is offered at reception for added convenience. Free parking is provided.

Abdulla Kodiriy metro station is 350 m away. The hotel is also 2 mi from Pakhtakor Stadium, 6 minutes drive from Tashkent Botanical Garden, and 4.3 mi from Tashkent International Airport.

""",
    },
    {
      "name": "Hotel Uzbekistan",
      "rang": "6.5",
      "location": "45 Mirzamakhmud Musakhanov Street",
      "price": "40\$/person",
      "facilities": [
        "24-hour front desk",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        "Non-smoking rooms",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/60097524.jpg?k=44ac1942470e66a6ea8e2780c0d315cab78ee48ee307dd423c1e6ff36dceedbc&o=&hp=1",
      "description":
          """Just 100 m from Emir Temur Square, this hotel in the heart of Tashkent offers a gym, sauna, and air-conditioned rooms with flat-screen TVs. Guests enjoy free parking and great transport links.

Classically furnished rooms and suites with mini-bars are offered at the Hotel Uzbekistan. Interiors feature dark wooden furniture and fine fabrics, and each bathroom has a hairdryer.

European cuisine and local specialties are served in the elegant restaurant with grand piano. The Vena café-bar offers a range of hot and cold drinks, and there is also a snack bar on site.

Relaxing and medicinal massages are available at the Uzbekistan Hotel. Guests can also book hairdressing and beauty appointments in the salon.

Emir Temur Metro Station is just 100 m away, and is on 2 different metro lines. The 24-hour reception staff can organize a shuttle to Tashkent Airport, 6.2 mi away.

""",
    },
    {
      "name": "Alliance Hotel Tashkent",
      "rang": "8.8",
      "location": "110 Vosit Vohidov ko'chasi",
      "price": "27\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Family rooms",
        "Free parking",
        "Airport shuttle",
        " 24-hour front desk",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/243745787.jpg?k=868d71dd6e6ea145dd843b35f0378b9045f852c382ac639b980c048166f33826&o=&hp=1",
      "description":
          """Alliance Hotel Tashkent has a restaurant, outdoor swimming pool, a shared lounge and garden in Tashkent. The property has a 24-hour front desk, a shuttle service, room service and free WiFi throughout the property.

At the hotel, each room is equipped with a desk. Complete with a private bathroom equipped with a shower and bathrobes, the rooms at Alliance Hotel Tashkent have a flat-screen TV and air conditioning, and some rooms include a seating area. At the accommodation rooms come with bed linen and towels.

Alliance Hotel Tashkent offers a buffet or halal breakfast.

""",
    },
    {
      "name": "Wyndham Tashkent",
      "rang": "8.4",
      "location": "Amir Timur Street C4",
      "price": "140\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
      ],
      "image":
          "https://www.booking.com/hotel/uz/wyndham-tashkent.html?aid=319915;label=tashkent-ycDNvCL9bM9UM4w8ypr9hgS153064968190%3Apl%3Ata%3Ap115%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-360171579%3Alp9075981%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YdQLqCSGZAFDHKNAytkZCCU;sihttps://www.booking.com/hotel/uz/wyndham-tashkent.html?aid=319915;label=tashkent-ycDNvCL9bM9UM4w8ypr9hgS153064968190%3Apl%3Ata%3Ap115%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-360171579%3Alp9075981%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YdQLqCSGZAFDHKNAytkZCCU;sid=0f7b0c542c6844bfb445e55b232e9e7f;dest_id=-2579372;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1647067613;srpvid=11f72faebcc7000c;type=total;ucfs=1&#d=0f7b0c542c6844bfb445e55b232e9e7f;dest_id=-2579372;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;srepoch=1647067613;srpvid=11f72faebcc7000c;type=total;ucfs=1&#",
      "description": """
Set in Tashkent city-center, this 5-star hotel offers a gym, large indoor and outdoor swimming pools, sauna and Turkish steam bath. Free Wi-Fi is available throughout Wyndham Tashkent hotel. Other amenities include a beauty salon, business center, currency exchange office, travel agency, car parking and luggage storage.

Fully renovated in 2017, the spacious rooms at the Wyndham Tashkent feature classic and modern design. All rooms have individually controlled air-conditioning and include satellite TV, mini-bar and coffee and tea making facilities.

A buffet breakfast is provided each morning in Turkuaz restaurant where the guests may enjoy the variety of the international and Uzbek cuisine, as well as listen to the live sound of the piano.

Business meetings and corporate events can be held in five fully-equipped hotel's conference halls.

Abdullah Qodiriy Metro Station is a 5-minute walk away. Wyndham Tashkent is 200 m from the Emir Timur Museum and 2.5 mi from the famous Çhorsu Bazaar.

Guests enjoy free on-site parking and a 24-hour reception. Pick up and drop off service to Tashkent International Airport is available upon request.

""",
    },
    {
      "name": "Lotte City Hotel Tashkent Palace",
      "rang": "8.9",
      "location": "Buyuk Turon Street 56",
      "price": "120\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        " Airport shuttle",
        "Bar",
        "Family rooms"
            "Tea/Coffee Maker in All Rooms",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/292583518.jpg?k=d31062bf88a273ea4550f5a1cd8c731857a0a7b73db517c909769946023943c6&o=&hp=1",
      "description":
          """Featuring an outdoor pool and a health club, this centrally located hotel is just 500 m from Mustakillik Maydoni Metro Station. It offers air-conditioned rooms, and a roof top terrace.

The classic-style rooms at Lotte City Hotel Tashkent Palace each feature satellite TV and a work desk. Toiletries and a hairdryer are provided in the private bathroom.

The hotel restaurants offer a choice of Eastern European, Asian, and international specialties. Guests can dine on the rooftop terrace or in the courtyard garden, and drinks are served in the piano bar.

The health club at Lotte City Hotel Tashkent Palace features a gym, sauna, and guests can book beauty treatments and massages. The Alisher Navoi Theater and the Uzbekistan State Museum are within a 5-minute walk of the hotel.

""",
    },
    {
      "name": "Ichan Qal'a Premium Class Hotel",
      "rang": "9.0",
      "location": "Tafakkur 68,",
      "price": "82\$/person",
      "facilities": [
        "3 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        "Family room",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/319177515.jpg?k=38b1a958bcc059af21c87f90dc7797244c5b4eaa40cd5054712e5927af956c67&o=&hp=1",
      "description": """
Ichan Qal'a Premium Class Hotel is located in Tashkent, 1.9 mi from the Tashkent International Airport and 3.1 mi from the city center. It features indoor and outdoor pools, sauna, gym, 24-hour front desk and room service. Parking and Wi-Fi are offered at the property.

The comfortable, air-conditioned rooms are decorated with rich fabrics and offer warm-colored, oriental interiors. Each room has a LCD TV, a refrigerator and a private bathroom with free toiletries and a hairdryer.

A gourmet breakfast accompanied by live music is offered daily at the property. A two-story on-site restaurant serves European and local Uzbek cuisine. A lounge bar and an open-air terrace also welcome guests. Business lunch offer is available on weekdays.

The property provides meeting facilities for the groups up to 100 people. Laundry and dry cleaning are offered at surcharge as well as massage services.
""",
    },
    {
      "name": "The Royal Mezbon Hotel & SPA",
      "rang": "9.1",
      "location": "Kichik Xalqa Yo'li street",
      "price": "79\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Free parking",
        "Family room",
        "Airport shuttle",
        "Tea/Coffee Maker in All Rooms",
        "Spa",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/208881127.jpg?k=17b418c83cde6d5b3c2aea3d57994a4780a74fcd9f9d3982cdd2d505cf424a6b&o=&hp=1",
      "description": """
Featuring a bar and a terrace, The Royal Mezbon Hotel & SPA is located in Tashkent. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi throughout the property. There is free private parking and the property has paid airport shuttle service.

The hotel will provide guests with air-conditioned rooms offering a desk, an electric tea pot, a fridge, a minibar, a safety deposit box, a flat-screen TV and a private bathroom with a shower. At The Royal Mezbon Hotel & SPA the rooms include bed linen and towels.

""",
    },
    {
      "name": "Ramada by Wyndham Tashkent",
      "rang": "7.2",
      "location": "Abdulla Kodiry Street,1",
      "price": "87\$/person",
      "facilities": [
        "1 swimming pool",
        "Free WiFi",
        "Fitness Center",
        "Airport shuttle",
        "Free parking",
        "Spa",
        "Bar",
      ],
      "image":
          "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/125008539.jpg?k=be9ce1e2940bc54badab892c6193626b5aeb88b937cba2d946881e29dd5c93e3&o=&hp=1",
      "description": """
Located in the city center of Tashkent, just a 5-minute walk from the famous Independence Square and opposite to Anhor Locomotiv Park with a carting track, Ramada by Wyndham Tashkent offers on-site cash machines, free WiFi throughout the property and free private parking.

Rooms at the hotel offer a TV with satellite channels, a mini-bar, an electric kettle, a seating area, a safety deposit box, air conditioning, and a private bathroom. Guests can benefit from a 24-hour room service.

Guests can enjoy Indian, Turkish and European cuisine at the hotel's restaurants, and buffet breakfast is served every morning. Guests can relax in the Ramada's health club with a fitness center, swimming pool, massage and sauna.
""",
    },
  ]
};
