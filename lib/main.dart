import 'package:flutter/material.dart';
import 'package:portafolio/ui/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio',
      routes: routes,
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,      
    );
  }
}