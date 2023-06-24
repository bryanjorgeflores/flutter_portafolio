import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class AnimalCategories extends StatelessWidget {
  const AnimalCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const Expanded(
                child: TextWidget(
                  text: 'Birds',
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (index == 0)
                Container(
                  width: 40,
                  height: 3,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
