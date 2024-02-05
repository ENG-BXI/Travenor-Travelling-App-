import 'package:flutter/material.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget defaultBottom(
        {required String text, required GestureTapCallback function}) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: sizeScreen.width * (50 / designWidth)),
        height: sizeScreen.height * (56 / designHight),
        width: sizeScreen.width,
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
          defaultBottom(
            text: bottomText,
            function: function,
          )
        ],
      ),
    );
