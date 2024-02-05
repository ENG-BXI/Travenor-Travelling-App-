import 'package:flutter/material.dart';
import 'package:travenor/Modules/OnboardScreen-2/OnboardScreen-2.dart';
import 'package:travenor/Modules/OnboardScreen_1/OnboardScreen_1.dart';
import 'package:travenor/Modules/OnboardScreen_3/OnboardScreen_3.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

String SplashScreen_route = 'SplashScreen';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return GestureDetector(
      child: Scaffold(
          backgroundColor: myColor.mainColor,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: sizeScreen.height * (282 / 812)),
                  child:
                     SvgPicture.asset('assets/images/SplashLogo.svg'),
                ),
                Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: sizeScreen.height * (32 / 812)),
                  child: SvgPicture.asset('assets/images/TravenorLogo.svg'),
                )
              ],
            ),
          )),
      onTap: () {
        Navigator.restorablePushReplacementNamed(context, OnboardScreen_1_router);
      },
    );
  }
}

//32
//812

