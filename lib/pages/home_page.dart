import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/nav_items.dart';
import 'package:flutter_application_1/widgets/site_logo.dart';

import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';


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

    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key:scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth ? null:const DrawerMobile(),
          body:ListView(
            scrollDirection: Axis.vertical,
            children:[
              // Main
              if(constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop() 
              else
              HeaderMobile(
                onLogoTap: (){},
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

              const MainDesktop(),
                
               // Skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
               // Projects
              Container(
                height: 500,
                width: double.maxFinite,
              ),
               // Contacts
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // Footer
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ] ,)
        );
      }
    );
  }
}