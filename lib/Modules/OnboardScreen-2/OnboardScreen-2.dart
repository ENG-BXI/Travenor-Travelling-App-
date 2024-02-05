import 'package:flutter/material.dart';
import 'package:travenor/Modules/OnboardScreen_3/OnboardScreen_3.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';

String OnboardScreen_2_router = 'OnboardScreen_2';

class OnboardScreen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return ScaffoldOnboard(
        pathImageHeader: 'assets/images/Onboard-2_Image.png',
        pathImageText: 'assets/images/Onboard-2_Text.svg',
        bottomText: 'Next',
        function: () {
          Navigator.restorablePushNamed(context, OnboardScreen_3_router);
        });
  }
}
