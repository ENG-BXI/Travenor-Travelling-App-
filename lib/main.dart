import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travenor/Modules/ForgotPasswordScreen/ForgotPasswordScreen.dart';
import 'package:travenor/Modules/HomeScreen/HomeScreen.dart';
import 'package:travenor/Modules/OnboardScreen-2/OnboardScreen-2.dart';
import 'package:travenor/Modules/OnboardScreen_1/OnboardScreen_1.dart';
import 'package:travenor/Modules/OnboardScreen_3/OnboardScreen_3.dart';
import 'package:travenor/Modules/Sign%20In/Sign_In.dart';
import 'package:travenor/Modules/Sign_Up/Sign_Up.dart';
import 'package:travenor/Modules/SplashScreen/SplashScreen.dart';
import 'package:travenor/shared/style/Colors.dart';

void main(List<String> args) {
  runApp(Travenor());
}

int designHight = 814;
int designWidth = 375;
late Size sizeScreen;

class Travenor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen_router,
      routes: {
        SplashScreen_route: (context) => SplashScreen(),
        OnboardScreen_1_router: (context) => OnboardScreen_1(),
        OnboardScreen_2_router: (context) => OnboardScreen_2(),
        OnboardScreen_3_router: (context) => OnboardScreen_3(),
        Sign_In_router: (context) => Sign_In(),
        Sign_Up_router: (context) => Sign_Up(),
        ForgotPasswordScreen_router: (context) => ForgotPasswordScreen(),
        HomeScreen_router: (context) => HomeScreen(),
      },
    );
  }
}
