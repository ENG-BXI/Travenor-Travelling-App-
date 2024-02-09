import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';
import 'package:travenor/shared/components/constans.dart';
import 'package:travenor/shared/style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

String Sign_In_router = 'Sign_In';

class Sign_In extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: sizeScreen.width,
        height: sizeScreen.height,
        child: Padding(
          padding: EdgeInsets.only(
            top: calcsizeH(size: sizeScreen, num: 55),
            left: calcsizew(size: sizeScreen, num: 20),
            right: calcsizew(size: sizeScreen, num: 20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    defualtFloatingActionBotton(),
                  ],
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 55),
                ),
                mainTextUserRegister(text: 'Sign in now'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 24),
                ),
                subTextUserRegister(text: 'Please sign in to continue our app'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 44),
                ),
                defaultTextFormField(
                    textInputType: TextInputType.emailAddress,
                    hinttext: 'Email Address'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 24),
                ),
                defaultTextFormField(
                  textInputType: TextInputType.visiblePassword,
                  hinttext: 'Password',
                  isPassword: true,
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: myColor.orangeColor,
                          fontSize: calcsizeH(size: sizeScreen, num: 16)),
                    )
                  ],
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 43),
                ),
                defaultBottom(text: 'Sign In', function: () {}),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 43),
                ),
                textUnderBottom(longText: 'Don’t have an account?',context: context ,isSignUp: false),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 26),
                ),
                Text(
                  'Or connect',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: calcsizew(size: sizeScreen, num: 16),
                  ),
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 30),
                ),
                iconSocialmedia(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

