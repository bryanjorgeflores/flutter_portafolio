import 'package:flutter/material.dart';
import 'package:portafolio/ui/animal_conservation/subpages/animal_search/animal_search.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/button.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AnimalConservationPage extends StatefulWidget {
  const AnimalConservationPage({Key? key}) : super(key: key);

  @override
  State<AnimalConservationPage> createState() => _AnimalConservationPageState();
}

class _AnimalConservationPageState extends State<AnimalConservationPage> {
  final PageController pageController = PageController();
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              itemCount: 3,
              onPageChanged: (index) {
                setState(() {
                  currentSlide = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.575,
                        width: size.width * 0.8,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/a/a4/Ramphastos_toco_-Birdworld%2C_Farnham%2C_Surrey%2C_England-8a.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight: Radius.circular(200),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () async {
                          await launchUrlString(
                              'https://dribbble.com/shots/18280859-Animal-Conservation-App');
                        },
                        label: const TextWidget(
                          text: 'Inspirado por: Animal Conservation App',
                          color: green,
                          fontSize: 12,
                        ),
                        icon: const Icon(
                          Icons.launch,
                          color: green,
                          size: 16,
                        ),
                      ),
                      const TextWidget(
                        text: 'EXPLORE & DONATE',
                        color: white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextWidget(
                        text:
                            'The work to protect one species benefits us all. Let\'s come together to save animals.',
                        color: white,
                        fontSize: 20,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Text(''),
                      ),
                      for (var item in [0, 1, 2])
                        AnimatedContainer(
                          width: item == currentSlide ? 30 : 15,
                          height: 3,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 2,
                          ),
                          decoration: BoxDecoration(
                            color: item == currentSlide
                                ? green
                                : green.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          duration: const Duration(milliseconds: 300),
                        ),
                      const Expanded(
                        child: Text(''),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Explore now >',
                    buttonColor: green,
                    textColor: black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnimalSearch(),
                        ),
                      );
                    },
                    isTextBold: true,
                    fontSize: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
