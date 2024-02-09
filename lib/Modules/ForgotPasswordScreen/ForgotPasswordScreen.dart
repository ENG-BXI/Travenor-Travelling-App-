import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/components.dart';
import 'package:travenor/shared/components/constans.dart';
import 'package:travenor/shared/style/Colors.dart';

String ForgotPasswordScreen_router = 'ForgotPasswordScreen';

class ForgotPasswordScreen extends StatelessWidget {
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
                mainTextUserRegister(text: 'Forgot password'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 24),
                ),
                subTextUserRegister(
                    text: 'Enter your email account to reset your password',
                    islongText: true),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 44),
                ),
                defaultTextFormField(
                    textInputType: TextInputType.emailAddress,
                    hinttext: 'Email Address'),
                SizedBox(
                  height: calcsizeH(size: sizeScreen, num: 30),
                ),
                defaultBottom(
                    text: 'Reset Password',
                    function: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 70),
                              decoration: BoxDecoration(
                                color: myColor.backgroundColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              // width: calcsizew(size: sizeScreen, num: 335 ) ,
                              width: 335,
                              // height: calcsizeH(size: sizeScreen, num: 196),
                              height: 196,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/Dailog_Image.png'),
                                      width: 44,
                                      height: 44,
                                    ),
                                    SizedBox(
                                      height:
                                          calcsizeH(size: sizeScreen, num: 24),
                                    ),
                                    Text(
                                      'Check your email',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 24),
                                    ),
                                    SizedBox(
                                      height:
                                          calcsizeH(size: sizeScreen, num: 15),
                                    ),
                                    Text(
                                      'We have send password recovery instruction to your email',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
