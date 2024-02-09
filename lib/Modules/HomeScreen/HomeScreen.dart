import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travenor/main.dart';
import 'package:travenor/shared/components/constans.dart';
import 'package:travenor/shared/style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

String HomeScreen_router = 'HomeScreen';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top: calcsizeH(size: sizeScreen, num: 55),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/Profile_Image.svg',
                                width: 26,
                                height: 26,
                              ),
                            ),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(20),
                              shape: BoxShape.circle,
                              color: Color(0xffFFEADF),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text('Leonardo')
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: SvgPicture.asset(
                            'assets/images/notification_icon.svg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20, end: 20),
              child: SvgPicture.asset('assets/images/Text_Home.svg'),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Destination',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 15,
                        color: myColor.orangeColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              height: 375,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                      height: 375,
                      width: 268,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(images[index]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.only(start: 20, end: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  TextTitle[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      Rating[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.only(start: 20, end: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text(
                                      Location[index],
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/people_Image.png'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ));
                },
                itemCount: images.length,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'fff'),
      //     BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'fff'),
      //     BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'fff'),
      //   ],
      // ),
    );
  }
}

List<String> images = [
  'assets/images/Image_Home_1.png',
  'assets/images/Image_Home_2.png'
];

List<String> TextTitle = ['Niladri Reservoir', 'Darma Reservoir'];

List<String> Rating = ['4.7', '4.9'];

List<String> Location = ['Tekergat, Sunamgnj', 'Darma, Kuningan'];
