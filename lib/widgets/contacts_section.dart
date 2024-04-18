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
    return               Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(builder:(context,constraints){
              if(constraints.maxWidth >= kMinDesktopWidth){
                  return buildNameEmailFieldDesktop();
              }
              else
                  return buildNameEmailFieldMobile();
            },),
          ),
          // message field
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your message",
              maxLines: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Get in touch"))),
          ),

          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              child: const Divider()),
          const SizedBox(
            height: 15,
          ),
          // SNS icon button links
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
                  "github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                   js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                   js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset(
                  "telegram.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop(){
    return Row(
              children: [
                // name
                Flexible(
                  child: CustomTextField(
                    hintText: "Your name",
                  ),
                ),
                // email
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: CustomTextField(
                    hintText: "Your email",
                  ),
                ),
              ],
            );
  }

Column buildNameEmailFieldMobile(){
    return Column(
              children: [
                // name
                Flexible(
                  child: CustomTextField(
                    hintText: "Your name",
                  ),
                ),
                // email
                const SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: CustomTextField(
                    hintText: "Your email",
                  ),
                ),
              ],
            );
  }
}