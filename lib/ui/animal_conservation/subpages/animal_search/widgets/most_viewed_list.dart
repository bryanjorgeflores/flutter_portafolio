import 'package:flutter/material.dart';
import 'package:portafolio/domain/entities/animal.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';

class MostViewedList extends StatefulWidget {
  const MostViewedList({Key? key}) : super(key: key);

  @override
  State<MostViewedList> createState() => _MostViewedListState();
}

class _MostViewedListState extends State<MostViewedList> {
  List<Animal> animals = [
    Animal(
      name: 'Kakapo',
      location: 'New Zealand',
      img:
          'https://cff2.earth.com/uploads/2019/09/06173445/bird-663346_1280.jpg',
      color: '',
    ),
    Animal(
      name: 'Fruit Dove',
      location: 'Guam and the Northern Marianas Islands',
      img: 'https://cff2.earth.com/uploads/2019/09/27061709/TeTuatahianui.jpg',
      color: '',
    ),
    Animal(
      name: 'Kiwi',
      location: 'New Zealand',
      img: 'https://cff2.earth.com/uploads/2019/09/03084600/shutterstock_1456713887-1536x1024.jpg',
      color: '',
    ),
    Animal(
      name: 'Hooded Grebe',
      location: 'Guam and the Northern Marianas Islands',
      img: 'https://cff2.earth.com/uploads/2019/09/06140014/snowy-owl-3303888_1920-1024x668.jpg',
      color: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: animals.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          Animal animal = animals[index];
          return Container(
            height: 300,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  animal.img,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: animal.name,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: white,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: green,
                    ),
                    Expanded(
                      child: TextWidget(
                        text: animal.location,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: white,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
