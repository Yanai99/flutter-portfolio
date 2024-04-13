import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/nav_items.dart';
import 'package:flutter_application_1/widgets/site_logo.dart';

import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: const DrawerMobile(),
      body:ListView(
        scrollDirection: Axis.vertical,
        children:[
          // Main
          //HeaderDesktop(),
          HeaderMobile(
            onLogoTap: (){},
            onMenuTap: (){
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
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
}