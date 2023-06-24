import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';

class FooterFood extends StatelessWidget {
  const FooterFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: foodbook,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home_outlined),
                onPressed: () {},
                color: white,
                iconSize: 30,
              ),
              IconButton(
                icon: const Icon(Icons.breakfast_dining_outlined),
                onPressed: () {},
                color: white,
                iconSize: 30,
              ),
              const SizedBox(width: 40),
              IconButton(
                icon: const Icon(Icons.favorite_outline),
                onPressed: () {},
                color: white,
                iconSize: 30,
              ),
              IconButton(
                icon: const Icon(Icons.grid_view_outlined),
                onPressed: () {},
                color: white,
                iconSize: 30,
              )
            ],
          ),
        ),
      );
  }
}