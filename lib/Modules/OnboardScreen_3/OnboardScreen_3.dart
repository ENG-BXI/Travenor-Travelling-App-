import 'package:flutter/material.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';

String OnboardScreen_3_router = 'OnboardScreen_3';

class OnboardScreen_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return ScaffoldOnboard(
        pathImageHeader: 'assets/images/Onboard-3_Image.png',
        pathImageText: 'assets/images/Onboard-3_Text.svg',
        bottomText: 'Next',
        function: () {
          debugPrint('this is nextbottom 3 ');
        });
  }
}
