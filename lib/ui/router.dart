import 'package:flutter/material.dart';
import 'package:portafolio/ui/animal_conservation/animal_conservation_page.dart';
import 'package:portafolio/ui/foodbook/foodbook_page.dart';
import 'package:portafolio/ui/home/home_page.dart';
import 'package:portafolio/ui/movies/movies_page.dart';
import 'package:portafolio/ui/pizza_half/pizza_half_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  'home': (_) => const HomePage(),
  'animal-conservation': (_) => const AnimalConservationPage(),
  'food-book': (_) => const FoodBookPage(),
  'movies': (_) => const MoviesPage(),
  'pizza-half': (_) => const PizzaHalfPage(),
};
