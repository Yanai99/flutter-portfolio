import 'dart:js';

import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),

                child: Column(
                    children: [
                      // Work Projects title
                      const Text(
                        "Personal Projects",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50,),
                      // Work Projects cards
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 900),
                        child: Wrap(
                          spacing: 25,
                          runSpacing: 25,
                          children: [
                            for(int i=0; i <hobbyProjectUtils.length;i++)
                            ProjectCardWidget(project: hobbyProjectUtils[i],),
                          ],
                        ),
                      )
                    ],)
              );
  }
}