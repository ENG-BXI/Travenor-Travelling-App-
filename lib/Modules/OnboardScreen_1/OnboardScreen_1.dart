import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travenor/Modules/OnboardScreen-2/OnboardScreen-2.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';
import 'package:travenor/shared/style/Colors.dart';

String OnboardScreen_1_router = 'OnboardScreen_1';

class OnboardScreen_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return ScaffoldOnboard(
        pathImageHeader: 'assets/images/Onboard-1_Image.png',
        pathImageText: 'assets/images/Onboard-1_Text.svg',
        bottomText: 'Get Started',
        function: () {
          Navigator.restorablePushNamed(context, OnboardScreen_2_router);
        });
  }
}
