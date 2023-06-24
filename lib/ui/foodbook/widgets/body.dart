import 'package:flutter/material.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class BodyFood extends StatefulWidget {
  const BodyFood({Key? key, this.data = const [0, 1, 3]}) : super(key: key);

  final List data;

  @override
  State<BodyFood> createState() => _BodyFoodState();
}

class _BodyFoodState extends State<BodyFood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextWidget(
            text: 'Todays recipe',
            color: foodbook,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 320,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 20,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://www.strawberryblondiekitchen.com/wp-content/uploads/2017/11/Autumn-Harvest-Pizza-0851_hero.jpg',
                            width: 200,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: white,
                            child: Icon(
                              Icons.favorite_outline,
                              color: orange,
                              size: 20,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: greenObscure,
                                  ),
                                  SizedBox(width: 5),
                                  TextWidget(
                                    text: '30 min',
                                    color: greenObscure,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const TextWidget(
                      text: 'Autumn Pizza',
                      color: foodbook,
                      fontSize: 20,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.star_outline,
                          color: foodbook,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextWidget(
                            text: '4.5 (123)',
                            color: foodbook,
                          ),
                        ),
                        TextWidget(
                          text: 'By Devon Lane',
                          color: foodbook,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextWidget(
            text: 'Recommended',
            color: foodbook,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 320,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 20,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 360,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://www.strawberryblondiekitchen.com/wp-content/uploads/2017/11/Autumn-Harvest-Pizza-0851_hero.jpg',
                            width: 360,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: white,
                            child: Icon(
                              Icons.favorite_outline,
                              color: orange,
                              size: 20,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: greenObscure,
                                  ),
                                  SizedBox(width: 5),
                                  TextWidget(
                                    text: '30 min',
                                    color: greenObscure,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const TextWidget(
                      text: 'Autumn Pizza',
                      color: foodbook,
                      fontSize: 20,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.star_outline,
                          color: foodbook,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextWidget(
                            text: '4.5 (123)',
                            color: foodbook,
                          ),
                        ),
                        TextWidget(
                          text: 'By Devon Lane',
                          color: foodbook,
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
