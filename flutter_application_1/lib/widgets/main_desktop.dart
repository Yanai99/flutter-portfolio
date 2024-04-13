import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return               Container(
                margin: EdgeInsets.symmetric(horizontal: 20,),
                height: screenHeight /1.2,
                constraints: BoxConstraints(minHeight: 350,),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text("Hi,\nI'm Yanai Faran\nAn aspiring SW",
                              style: TextStyle(fontSize: 30,
                              height: 1.5,
                              fontWeight: FontWeight.bold,color: CustomColor.whitePrimary) ,),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(onPressed: (){}, child: const Text("Get in touch"),)
                          )
                    ],
                  ),
                  Image.asset(
                    "assets/profile_pic.jpeg",
                    width:screenWidth/4,)
                  ],
                  ),
                  );
  }
}