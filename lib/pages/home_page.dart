import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/sns_link.dart';
import 'package:flutter_application_1/widgets/contacts_section.dart';
import 'package:flutter_application_1/widgets/footer.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/skill_mobile.dart';
import 'dart:js' as js;
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/projects_section.dart';
import '../widgets/skill_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final List<GlobalKey> navbarKeys=List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(onNavItemTap: (int navIndex,){
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
              }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key:navbarKeys.first),
                // Main
                if(constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex){
                    scrollToSection(navIndex);
                  },) 
                else
                HeaderMobile(
                  onLogoTap: (){},
                  onMenuTap: (){
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
            
                if (constraints.maxWidth >= kMinDesktopWidth) 
                  const MainDesktop() 
                else
                  const MainMobile(),
                
                
                 // Skills
                Container(
                  key:navbarKeys[1],
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
                ProjectSection(
                  key: navbarKeys[2],
                ),
            
                const SizedBox(height: 30,),
                // Contacts
                ContactsSection(
                  key: navbarKeys[3],
                ),
            
                // Footer
                const Footer(),
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex){
    if(navIndex == 4){
      // open a blog page
      js.context.callMethod('open',[SnsLinks.blog]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut);
  }
}
