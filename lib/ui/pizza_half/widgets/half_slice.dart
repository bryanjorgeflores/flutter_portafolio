import 'package:flutter/material.dart';
import 'package:portafolio/domain/entities/pizza.dart';

class HalfSlicePizza extends StatelessWidget {
  final PageController controller;
  final Function(int index) onPageChanged;
  final List<Pizza> pizzas;
  final int currentIndex;
  final Alignment alignment;
  const HalfSlicePizza({
    Key? key,
    required this.controller,
    required this.onPageChanged,
    this.pizzas = const [],
    this.currentIndex = 0,
    this.alignment = Alignment.centerRight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        pageSnapping: true,
        onPageChanged: onPageChanged,
        children: [
          for (var index = 0; index < pizzas.length; index++)
            Center(
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: currentIndex == index ? 1 : .5,
                child: AnimatedContainer(
                  height: currentIndex == index ? 250 : 100,
                  duration: const Duration(milliseconds: 180),
                  child: Align(
                    alignment: alignment,
                    child: ClipRRect(
                      child: Align(
                        alignment: alignment ==Alignment.centerRight ? Alignment.centerLeft:Alignment.centerRight,
                        widthFactor: 0.5,
                        child: Image.asset(
                          'assets/imgs/pizzas/${pizzas[index].image}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
