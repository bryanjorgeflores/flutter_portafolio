import 'package:flutter/material.dart';
import 'package:portafolio/domain/entities/project.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class ProjectList extends StatelessWidget {
  ProjectList({Key? key}) : super(key: key);
  final List<Project> menuList = [
    Project(
      title: 'Pizza Half',
      route: 'pizza-half',
      img: 'pizza_half.png',
    ),
    Project(
      title: 'Animal Conservation',
      route: 'animal-conservation',
      img: 'animal_conservation.png',
    ),
    Project(
      title: 'FoodBook',
      route: 'food-book',
      img: 'foodbook.png',
    ),
    Project(
      title: 'Movies',
      route: 'movies',
      img: 'movies.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      itemCount: menuList.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemBuilder: (BuildContext context, int index) {
        Project project = menuList[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, project.route);
          },
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/imgs/${project.img}',
                ),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium,
                colorFilter: const ColorFilter.mode(
                  black,
                  BlendMode.softLight,
                ),
                opacity: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: project.title,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
