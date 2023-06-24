import 'dart:convert';

List<Pizza> pizzaFromJson(String str) =>
    List<Pizza>.from(json.decode(str).map((x) => Pizza.fromJson(x)));

String pizzaToJson(List<Pizza> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pizza {
  String? name;
  double? price;
  String? image;

  Pizza({
    this.name,
    this.price,
    this.image,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        name: json["name"],
        price: json["price"]?.toDouble(),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "image": image,
      };
}
