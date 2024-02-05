import 'package:flutter/material.dart';
import 'package:travenor/Modules/Sign%20In/Sign_In.dart';
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

defualtFloatingActionBotton() => FloatingActionButton(
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
