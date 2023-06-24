import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Hello!',
                color: white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                text: 'Rosa',
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ],
          ),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://www.crushpixel.com/big-static11/preview4/smiling-young-woman-front-group-676121.jpg',
          ),
        ),
      ],
    );
  }
}
