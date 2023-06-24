import 'dart:convert';

Project projectFromJson(String str) => Project.fromJson(json.decode(str));

String projectToJson(Project data) => json.encode(data.toJson());

class Project {
  Project({
    required this.title,
    required this.route,
    required this.img,
  });

  final String title;
  final String route;
  final String img;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        title: json["title"],
        route: json["route"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "route": route,
        "img": img,
      };
}
