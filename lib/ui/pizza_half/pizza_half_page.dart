import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portafolio/domain/entities/pizza.dart';
import 'package:portafolio/ui/pizza_half/widgets/half_price.dart';
import 'package:portafolio/ui/pizza_half/widgets/half_slice.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/button.dart';
import 'package:portafolio/ui/widgets/text.dart';

class PizzaHalfPage extends StatefulWidget {
  const PizzaHalfPage({Key? key}) : super(key: key);

  @override
  State<PizzaHalfPage> createState() => _PizzaHalfPageState();
}

class _PizzaHalfPageState extends State<PizzaHalfPage> {
  var controllerHalfLeft =
      PageController(viewportFraction: 1 / 3, initialPage: 1);
  var controllerHalfRight =
      PageController(viewportFraction: 1 / 3, initialPage: 1);

  int currentPizzaHalfLeft = 1;
  int currentPizzaHalfRight = 1;
  List<Pizza> pizzas = [];
  @override
  void initState() {
    super.initState();
    loadPizzas();
  }

  loadPizzas() async {
    String data = await rootBundle.loadString('assets/json/pizzas.json');
    setState(() {
      pizzas = pizzaFromJson(data);
    });
  }

  calculatePrice(double? priceLeft, double? priceRight) {
    return ((priceLeft ?? 0) + (priceRight ?? 0)).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: orange,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Half & Half pizza, extra large 35cm',
          style: TextStyle(
            color: black,
          ),
        ),
      ),
      body: SafeArea(
        child: pizzas.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HalfSlicePizza(
                                    controller: controllerHalfLeft,
                                    currentIndex: currentPizzaHalfLeft,
                                    pizzas: pizzas,
                                    onPageChanged: (int index) {
                                      setState(() {
                                        currentPizzaHalfLeft = index;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 2),
                                  HalfSlicePizza(
                                    controller: controllerHalfRight,
                                    currentIndex: currentPizzaHalfRight,
                                    alignment: Alignment.centerLeft,
                                    pizzas: pizzas,
                                    onPageChanged: (int index) {
                                      setState(() {
                                        currentPizzaHalfRight = index;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        HalfPricePizza(
                          currentPizzaHalfLeft: currentPizzaHalfLeft,
                          currentPizzaHalfRight: currentPizzaHalfRight,
                          isHalfLeft: true,
                          pizzas: pizzas,
                        ),
                        HalfPricePizza(
                          currentPizzaHalfLeft: currentPizzaHalfLeft,
                          currentPizzaHalfRight: currentPizzaHalfRight,
                          isHalfLeft: false,
                          pizzas: pizzas,
                        ),
                      ],
                    ),
                  ),
                  TextWidget(
                      text:
                          'Price \$${calculatePrice(pizzas[currentPizzaHalfLeft].price, (pizzas[currentPizzaHalfRight].price))}'),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: 'Create pizza',
                    buttonColor: orange,
                    onPressed: () {},
                    percentWidth: 0.8,
                    height: 40,
                  ),
                  const SizedBox(height: 20)
                ],
              ),
      ),
    );
  }
}
