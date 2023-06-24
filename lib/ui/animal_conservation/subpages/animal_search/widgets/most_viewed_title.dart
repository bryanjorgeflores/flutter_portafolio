import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class MostViewedTitle extends StatelessWidget {
  const MostViewedTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: TextWidget(
            text: 'Most Viewed',
            color: white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: white,
        )
      ],
    );
  }
}
