import 'package:flutter/material.dart';
import 'package:portafolio/ui/foodbook/widgets/body.dart';
import 'package:portafolio/ui/foodbook/widgets/footer.dart';
import 'package:portafolio/ui/foodbook/widgets/header.dart';
import 'package:portafolio/ui/theme.dart';

class FoodBookPage extends StatefulWidget {
  const FoodBookPage({Key? key}) : super(key: key);

  @override
  State<FoodBookPage> createState() => _FoodBookPageState();
}

class _FoodBookPageState extends State<FoodBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: const [
            HeaderFood(),
            BodyFood(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: const Icon(Icons.search),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const FooterFood(),
    );
  }
}
