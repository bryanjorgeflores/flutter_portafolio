import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/button.dart';

class SearchAnimal extends StatelessWidget {
  const SearchAnimal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Search',
            hasIcon: true,
            icon: Icons.search,
            onPressed: () {},
            buttonColor: white.withOpacity(0.25),
            hasBorder: true,
            borderColor: white.withOpacity(0.3),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 60,
          width: 60,
          child: const Icon(Icons.camera_alt_outlined),
          decoration:
              const BoxDecoration(color: green, shape: BoxShape.circle),
        )
      ],
    );
  }
}
