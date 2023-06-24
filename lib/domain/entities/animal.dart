import 'dart:convert';

Animal animalFromJson(String str) => Animal.fromJson(json.decode(str));

String animalToJson(Animal data) => json.encode(data.toJson());

class Animal {
    Animal({
        required this.name,
        required this.location,
        required this.img,
        required this.color,
    });

    final String name;
    final String location;
    final String img;
    final String color;

    factory Animal.fromJson(Map<String, dynamic> json) => Animal(
        name: json["name"],
        location: json["location"],
        img: json["img"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "location": location,
        "img": img,
        "color": color,
    };
}
