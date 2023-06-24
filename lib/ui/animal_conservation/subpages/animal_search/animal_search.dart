import 'package:flutter/material.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/animal_categories.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/animal_list.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/header.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/most_viewed_list.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/most_viewed_title.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/widgets/search_animal.dart';
import 'package:portafolio/ui/theme.dart';

class AnimalSearch extends StatefulWidget {
  const AnimalSearch({Key? key}) : super(key: key);

  @override
  State<AnimalSearch> createState() => _AnimalSearchState();
}

class _AnimalSearchState extends State<AnimalSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          children: const [
            Header(),
            SearchAnimal(),
            SizedBox(height: 20),
            AnimalCategories(),
            SizedBox(height: 20),
            AnimalList(),
            SizedBox(height: 20),
            MostViewedTitle(),
            SizedBox(height: 20),
            MostViewedList()
          ],
        ),
      ),
    );
  }
}
