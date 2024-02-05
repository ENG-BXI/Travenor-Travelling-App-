import 'package:flutter/material.dart';
import 'package:travenor/Modules/Sign%20In/Sign_In.dart';
import 'package:travenor/Modules/Sign_Up/Sign_Up.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/constans.dart';
import 'package:travenor/shared/style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget defaultBottom(
        {required String text, required GestureTapCallback function}) =>
    GestureDetector(
      child: Container(
        height: sizeScreen.height * (56 / designHight),
        width: double.infinity,
        decoration: BoxDecoration(
            color: myColor.mainColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: myColor.backgroundColor,
              fontWeight: FontWeight.w500,
              fontSize: sizeScreen.width * (18 / designWidth)),
        )),
      ),
      onTap: function,
    );

Widget ScaffoldOnboard(
        {required String pathImageHeader,
        required String pathImageText,
        required String bottomText,
        required GestureTapCallback function}) =>
    Scaffold(
      backgroundColor: myColor.backgroundColor,
      body: Column(
        children: [
          Container(
            height: sizeScreen.height * (444 / designHight),
            width: sizeScreen.width * (375 / designWidth),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(pathImageHeader),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: sizeScreen.height * (40 / designHight),
          ),
          SvgPicture.asset(pathImageText),
          SizedBox(
            height: sizeScreen.height * (40 / designHight),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: calcsizew(size: sizeScreen, num: 20)),
            child: defaultBottom(
              text: bottomText,
              function: function,
            ),
          )
        ],
      ),
    );

Widget defualtFloatingActionBotton() => FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: Colors.grey.shade200,
      onPressed: () {},
      child: Icon(
        Icons.chevron_left_outlined,
        color: Colors.black,
        size: 35,
      ),
    );

Widget mainTextUserRegister({required String text}) => Text(
      text,
      style: TextStyle(
          fontSize: calcsizeH(size: sizeScreen, num: 34),
          fontWeight: FontWeight.w500),
    );

Widget subTextUserRegister({required String text, bool? islongText}) => Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
          fontSize:
              calcsizeH(size: sizeScreen, num: islongText ?? false ? 19 : 20),
          fontWeight: FontWeight.w500,
          color: Colors.grey),
    );

Widget defaultTextFormField(
    {required TextInputType textInputType,
    required String hinttext,
    bool? isPassword}) {
  // ispassword to determine any textformfield for password
  // visible for change icon in password to visible the password word
  // istap for color for eye if tap the textformfeild
  bool visible = false;
  bool isTap = false;
  // to swith between two icons
  Widget isvisible(bool visible) {
    return visible
        ? Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset('assets/images/Icon_eye.svg',
                color: isTap ? Colors.blue : null),
          )
        : Icon(Icons.remove_red_eye);
  }

  return Container(
      /*


      // required State management here
      // for password


      */

      height: calcsizeH(size: sizeScreen, num: 56),
      width: double.infinity,
      decoration: BoxDecoration(
          color: myColor.greyColor, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        onTap: () {
          isTap = true;
          print(isTap);
        },
        obscureText: isPassword ?? false ? !visible : false,
        keyboardType: textInputType,
        decoration: InputDecoration(
            suffixIcon: isPassword ?? false
                ? GestureDetector(
                    child: isvisible(visible),
                    onTap: () {
                      visible = !visible;
                      print(visible);
                    },
                  )
                : null,
            hintText: hinttext,
            // suffixIcon: ,

            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
      ));
}

Widget textUnderBottom(
        {required String longText,
        bool? isSignUp,
        required BuildContext context}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          longText,
          style: TextStyle(
              color: Colors.grey,
              fontSize: calcsizew(size: sizeScreen, num: 16)),
        ),
        SizedBox(
          width: calcsizew(size: sizeScreen, num: 5),
        ),
        GestureDetector(
          onTap: () {
            if (isSignUp ?? false) {
              Navigator.pushReplacementNamed(context, Sign_In_router);
              isSignUp = false;
            
            } else {
              Navigator.pushReplacementNamed(context,Sign_Up_router );
              isSignUp = true;
              
            }
          },
          child: Text(
            isSignUp ?? false ? 'Sign in' : 'Sign up',
            style: TextStyle(
              color: myColor.orangeColor,
              fontSize: calcsizew(size: sizeScreen, num: 16),
            ),
          ),
        ),
      ],
    );

Widget iconSocialmedia() =>
    Image(image: AssetImage('assets/images/socialMedia_Icon.png'));
