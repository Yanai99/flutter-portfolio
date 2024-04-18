import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/nav_items.dart';
import 'package:flutter_application_1/constants/skill_items.dart';
import 'package:flutter_application_1/utils/project_utils.dart';
import 'package:flutter_application_1/widgets/contacts_section.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/site_logo.dart';
import 'package:flutter_application_1/widgets/skill_mobile.dart';

import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../constants/skill_items.dart';
import '../widgets/project_card.dart';
import '../widgets/projects_section.dart';
import '../widgets/skill_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
/*               // Main
              if(constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop() 
              else
              HeaderMobile(
                onLogoTap: (){},
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

              if (constraints.maxWidth >= kMinDesktopWidth) 
                const MainDesktop() else const MainMobile(),
              
              
               // Skills
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text("What I can do", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),),

                    const SizedBox(height: 50,),

                    //platform and sklils
                    if(constraints.maxWidth>=kMedDesktopWidth)
                      const SkillsDesktop() 
                    else
                     const SkillsMobile()

                  ],
                )
              ),

              const SizedBox(height: 30,),
               // Projects
              const ProjectSection(),

              const SizedBox(height: 30,), */
              // Contacts
              ContactsSection(),

              // Footer
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}
