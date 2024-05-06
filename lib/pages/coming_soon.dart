import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoon();
}


class _ComingSoon extends State<ComingSoon> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child:  Center(
              child: Column(
                children: [
                  SizedBox(height: screenHeight/2,),
                  const Text('Coming Soon...',style:TextStyle(color:CustomColor.yellowPrimary,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      )),
                      const Icon(Icons.lock_clock,
                      color: CustomColor.yellowSecondary,
                      size:80,)
                ],
              ),
            ),
          ));
    });
  }
}
