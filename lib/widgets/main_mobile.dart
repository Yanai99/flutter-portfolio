import 'package:flutter/material.dart';

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
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.6),
                          CustomColor.scaffoldBg.withOpacity(0.6)
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Center(
                        child: Image.asset(
                          "assets/profile_pic.png",
                          width: screenWidth/2.5,),
                        )
                      ),
                      const SizedBox(height: 30,),
                    //intro text
                    const Text(
                      "Hi,\nI'm Yanai Faran\nAn aspiring SW",
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