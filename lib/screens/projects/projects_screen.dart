import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/provider/theme_provider.dart';
import 'package:mvp/screens/common_widgets/search_bar.dart';
import 'package:mvp/screens/projects/widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  List RandomImages = [
    'assets/images/a1ba09bb0346bae3ca48e70edba34599.jpeg',
    'assets/images/b4eff3d8d21abc32c56622f0f0f50687.png',
    'assets/images/dfb63a3acf743acb78f016547dd7b2ca.jpeg',
    'assets/images/ebe9b02a823a4a1a5d8d74b9fb46f846.jpeg'
  ];
  ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>()!;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: customTheme.containerBorderColor!, width: 2),
              ),
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'Projects',
            style: appbarFont,
          ),
        ),
        body: ListView(
          children: [
//Searchbar
            const CustomSearchBar(),
//cards
            ProjectCard(
              RandomImages: RandomImages,
              taskStatus: 'Pending',
            ),
            ProjectCard(
              RandomImages: RandomImages,
              taskStatus: 'Work on',
            ),

            ProjectCard(RandomImages: RandomImages, taskStatus: 'Pending')
          ],
        ),
      ),
    );
  }
}
