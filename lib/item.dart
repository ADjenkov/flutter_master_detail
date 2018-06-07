import 'package:meta/meta.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



// "class" : "Luxury",
//         "doors" : 2,
//         "hasAC" : true,
//         "id" : "car1",
//         "imageStoragePath" : "images/car1.jpg",
//         "imageUrl" : "https://raw.githubusercontent.com/bugventure/template-master-detail-ng/master/data/images/car1.jpg",
//         "luggage" : 3,
//         "name" : "BMW 5 Series",
//         "price" : 76,
//         "seats" : "2",
//         "transmission" : "Automatic"
class Item {
  Item({
    @required this.doors,
    @required this.hasAC,
    @required this.id,
    @required this.imageStoragePath,
    @required this.imageUrl,
    @required this.luggage,
    @required this.name,
    @required this.price,
    @required this.seats,
    @required this.transmission

  });

    final int doors;
    final bool hasAC;
    final String id;
    final String imageStoragePath;
    final String imageUrl;
    final int luggage;
    final String name;
    final int price;
    final String seats;
    final String transmission;

    factory Item.fromJson(Map<String, dynamic> json) {
    return new Item(
      doors: json['doors'],
      hasAC: json['hasAC'],
      id: json['id'],
      imageStoragePath: json['imageStoragePath'],
      imageUrl: json['imageUrl'],
      luggage:json['luggage'],
      name: json['name'],
      price: json['price'],
      seats: json['seats'],
      transmission:json['transmission']
    );
  }
}

Future<List<Item>> fetchItem() async {

  if(items.length>0) {
    return items;
  }

  final List<Item> tempItems = <Item>[
  ];

  final response =
    // await http.get('https://jsonplaceholder.typicode.com/posts');
    await http.get('https://gist.githubusercontent.com/ADjenkov/d524f9736341f4ca3354ccfaacb72477/raw/e51659f0c95e84a2d5a65354aeffa318e496eb39/cars-son');
  final responseJson = json.decode(response.body);

  for (Map<String, dynamic> car in responseJson["cars"]) {
      tempItems.add(new Item.fromJson(car));
  }

  return tempItems;
}

 List<Item> items = <Item>[
];