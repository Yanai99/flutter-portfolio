import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/welcom_message.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return  Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                height: screenHeight,
                constraints: BoxConstraints(maxHeight: 560,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //avatar img
                     Center(
                      child: Image.asset(
                        "assets/profile_pic.png",
                        width: screenWidth/2.5,),
                      ),
                      const SizedBox(height: 30,),
                    //intro text
                    const Text(
                      welcomeMessage,
                      style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    //btn
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(onPressed: (){}, 
                      child: const Text("Get in touch"),),
                      )
                      
                      
                  ],
                ),
              );
  }
}