import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/nav_items.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body:ListView(
        scrollDirection: Axis.vertical,
        children:[
          // Main
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.transparent,CustomColor.bgLight1]),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Text("YF",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: CustomColor.yellowSecondary
                ),),
                Spacer(),
                for(int i=0 ; i< navTitles.length ; i++)
                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: TextButton(
                      onPressed: (){}, 
                      child: Text(navTitles[i],
                            style: TextStyle(
                                          fontSize: 16,fontWeight: FontWeight.w500,color: CustomColor.whitePrimary
                          ),
                      ),
                    ),
                  )
              ],
            ),
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