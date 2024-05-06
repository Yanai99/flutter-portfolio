import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/constants/sns_link.dart';

import '../constants/colors.dart';
import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      width: screenWidth,
      child: Column(
        children: [
          //title
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: CustomColor.whitePrimary,
            ),
          ),
           const SizedBox(
             height: 40,
           ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children:[
              Icon(
                Icons.phone,
                color: CustomColor.whitePrimary,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ), 
              Text(
              "  054-268-1867",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary,
              ),
                       )],
           ),
          const SizedBox(
            height: 50,
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: CustomColor.whitePrimary,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text(
                "  YanaiParan@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: CustomColor.whitePrimary,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
           ConstrainedBox(
             constraints: const BoxConstraints(
               maxWidth: 700,
               maxHeight: 100,
             ),),

          // SNS icon button links

          // TODO:
          // 1. add email and phone number
          // 3. fix images in deployed webapp
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open',[SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                   js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                   js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset(
                  "assets/telegram.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
 }