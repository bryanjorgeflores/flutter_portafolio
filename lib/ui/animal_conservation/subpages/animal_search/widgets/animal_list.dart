import 'package:flutter/material.dart';
import 'package:portafolio/domain/entities/animal.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class AnimalList extends StatefulWidget {
  const AnimalList({Key? key}) : super(key: key);

  @override
  State<AnimalList> createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {
  List<Animal> animals = [
    Animal(
      name: 'Hummingbird',
      location: 'Rio Grande Valley, Texas',
      img: 'http://pngimg.com/uploads/hummingbird/hummingbird_PNG50.png',
      color: '33FF6E',
    ),
    Animal(
      name: 'Kingfisher',
      location: 'Kruger National Park, South Africa',
      img:
          'https://cdn.pixabay.com/photo/2017/10/04/10/17/bird-2815685_960_720.png',
      color: 'BFD432',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: animals.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          Animal animal = animals[index];
          return Stack(
            children: [
              Container(
                height: 200,
                width: 300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated,
                    colors: [
                      Color(int.parse('FF${animal.color}', radix: 16)),
                      background
                    ],
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Row(
                  children: [
                    Image.network(
                      animal.img,
                      fit: BoxFit.contain,
                      width: 100,
                      height: 200,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: animal.name,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on,
                              ),
                              Expanded(
                                child: TextWidget(
                                  text: animal.location,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  width: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color(int.parse('FF${animal.color}', radix: 16)),
                  ),
                  child: const Center(
                    child: TextWidget(
                      text: '>',
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
