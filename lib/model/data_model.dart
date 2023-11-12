import 'dart:convert';

class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.description,
      required this.location,
      required this.people,
      required this.stars});
  factory DataModel.fromJson(Map<String, dynamic> Json) {
    return DataModel(
        name: Json["name"],
        img: Json["img"],
        price: Json["price"],
        description: Json["description"],
        location: Json["location"],
        people: Json["people"],
        stars: Json["stars"]);
  }
}
