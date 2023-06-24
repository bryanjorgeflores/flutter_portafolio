import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HeaderFood extends StatelessWidget {
  const HeaderFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          child: Column(
            children: [
              const Icon(
                Icons.coffee_outlined,
                color: orange,
              ),
              const TextWidget(
                text: 'FoodBook',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              TextButton.icon(
                onPressed: () async {
                  await launchUrlString(
                      'https://dribbble.com/shots/18276406-Food-App-Concept');
                },
                label: const TextWidget(
                  text: 'Inspirado por: Food App Concept',
                  color: foodbook,
                  fontSize: 12,
                ),
                icon: const Icon(
                  Icons.launch,
                  color: foodbook,
                  size: 16,
                ),
              ),
              const TextWidget(
                text: 'Grow your plant kitchen',
                color: foodbook,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Positioned(
          right: 5,
          top: 5,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://www.crushpixel.com/big-static11/preview4/smiling-young-woman-front-group-676121.jpg',
            ),
          ),
        ),
        const BackButton()
      ],
    );
  }
}
