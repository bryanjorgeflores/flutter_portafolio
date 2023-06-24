import 'package:flutter/material.dart';
import 'package:portafolio/domain/entities/pizza.dart';
import 'package:portafolio/ui/widgets/text.dart';

class HalfPricePizza extends StatelessWidget {
  final int currentPizzaHalfLeft;
  final int currentPizzaHalfRight;
  final List<Pizza> pizzas;
  final bool isHalfLeft;
  const HalfPricePizza({
    Key? key,
    this.currentPizzaHalfLeft = 0,
    this.currentPizzaHalfRight = 0,
    this.pizzas = const [],
    this.isHalfLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(
          bottom: size.height / 3,
          left: isHalfLeft
              ? currentPizzaHalfLeft == currentPizzaHalfRight
                  ? 0
                  : 20
              : 0,
          right: isHalfLeft
              ? 0
              : currentPizzaHalfLeft == currentPizzaHalfRight
                  ? 0
                  : 20,
        ),
        child: Align(
          alignment: currentPizzaHalfLeft == currentPizzaHalfRight
              ? Alignment.center
              : isHalfLeft
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
          heightFactor: size.height / 3,
          child: TextWidget(
            key: Key('$currentPizzaHalfLeft'),
            text:
                '${isHalfLeft ? pizzas[currentPizzaHalfLeft].name : pizzas[currentPizzaHalfRight].name}'
                '${currentPizzaHalfLeft != currentPizzaHalfRight ? '\n\$${isHalfLeft ? priceFormatted(pizzas[currentPizzaHalfLeft].price) : priceFormatted(pizzas[currentPizzaHalfRight].price)}' : ''}',
            fontWeight: currentPizzaHalfLeft == currentPizzaHalfRight
                ? FontWeight.bold
                : FontWeight.normal,
            fontSize: 16,
            textAlign: isHalfLeft ? TextAlign.start : TextAlign.end,
          ),
        ));
  }

  priceFormatted(double? price) {
    return (price ?? 0).toStringAsFixed(2);
  }
}
