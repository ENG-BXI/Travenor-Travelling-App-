import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';
import 'package:travenor/shared/components/constans.dart';
import 'package:travenor/shared/style/Colors.dart';

String Sign_Up_router = 'Sign_Up';

class Sign_Up extends StatelessWidget {
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
                mainTextUserRegister(text: 'Sign up now'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 24),
                ),
                subTextUserRegister(
                    text: 'Please fill the details and create account',
                    islongText: true),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 44),
                ),
                defaultTextFormField(
                    textInputType: TextInputType.name, hinttext: 'Full Name'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 24),
                ),
                defaultTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hinttext: 'Email Address',
                ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Password must be 8 character',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: calcsizeH(size: sizeScreen, num: 16)),
                    )
                  ],
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 30),
                ),
                defaultBottom(text: 'Sign Up', function: () {}),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 30),
                ),
                textUnderBottom(
                    longText: 'Already have an account', isSignUp: true ,context: context),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 20),
                ),
                Text(
                  'Or connect',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: calcsizew(size: sizeScreen, num: 16),
                  ),
                ),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 25),
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
