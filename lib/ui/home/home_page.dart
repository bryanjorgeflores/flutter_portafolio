import 'package:flutter/material.dart';
import 'package:portafolio/ui/home/widgets/project_list.dart';
import 'package:portafolio/ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: red,
        title: const Text(
          'Bryan Jorge - Open Gallery',
        ),
      ),
      body: ProjectList(),
    );
  }
}
