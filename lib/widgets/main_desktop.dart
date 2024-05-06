import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/welcom_message.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,),
      height: screenHeight /1.2,
      constraints: BoxConstraints(minHeight: 350,),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //intro message
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text(welcomeMessage,
                    style: TextStyle(fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,color: CustomColor.whitePrimary) ,),
              const SizedBox(height: 20,),
              //contact btn
              SizedBox(
                width: 250,
                child: ElevatedButton(onPressed: (){}, 
                child: const Text("Get in touch"),)
                )
          ],
        ),
        //avatar img
        Image.asset(
          "assets/profile_pic.png",
          width:screenWidth/3,)
        ],
        ),
        );
  }
}