import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/button.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  int currentPage = 0;
  late PageController pageController;
  List movies = [];

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8);
    loadJson();
    super.initState();
  }

  loadJson() async {
    String data = await rootBundle.loadString('assets/json/movies.json');
    var jsonResult = jsonDecode(data);
    setState(() {
      movies = jsonResult['Search'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.5,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: movies.length,
                  pageSnapping: true,
                  onPageChanged: (value) {
                    print(value);
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                '${movie['Poster']}',
                              ),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.medium,
                              colorFilter: const ColorFilter.mode(
                                black,
                                BlendMode.softLight,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    );
                  },
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  await launchUrlString(
                      'https://dribbble.com/shots/18839708-Movie-Tickets-Mobile-App');
                },
                label: const TextWidget(
                  text: 'Inspirado por: Movie Tickets Mobile App',
                  color: red,
                  fontSize: 12,
                ),
                icon: const Icon(
                  Icons.launch,
                  color: red,
                  size: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.schedule,
                    color: grey,
                  ),
                  const SizedBox(width: 10),
                  TextWidget(
                    text: '2h ${37 + (1 * currentPage)}m',
                    color: white,
                  )
                ],
              ),
              if (movies.isNotEmpty) ...[
                const SizedBox(height: 30),
                TextWidget(
                  text: movies[currentPage]['Title'],
                  color: white,
                  fontSize: 32,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawChip(
                      backgroundColor: black.withOpacity(0.7),
                      label: TextWidget(
                        text: 'Año: ${movies[currentPage]['Year']}',
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    RawChip(
                      backgroundColor: black.withOpacity(0.7),
                      label: TextWidget(
                        text: 'IMDB: ${movies[currentPage]['imdbID']}',
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ]
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            percentWidth: 0.3,
            height: 50,
            text: 'Movie',
            hasIcon: true,
            icon: Icons.movie,
            buttonColor: red,
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: grey,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.airplane_ticket_outlined,
              color: grey,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              color: grey,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
