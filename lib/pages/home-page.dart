import 'dart:ui';


import 'package:bron_hotel/pages/hotel/hotel-page.dart';
import 'package:bron_hotel/pages/auth/login-and-register-page.dart';
import 'package:bron_hotel/pages/tours/tours-screen.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../widgets/follow-screen.dart';
import 'flights/flight-screen.dart';
import 'notifications-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentValue = 0;
  int currentIndexTabBar = 0;
  String gender = "";
  bool activeRadio = false;
  ScrollController _controller = ScrollController();

  List<TabBarMain> listTabBar = [
    TabBarMain("Hotel", "assets/images/stays.png"),
    TabBarMain("Tours", 'assets/images/tours.png'),
    TabBarMain("Flights", 'assets/images/flights.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "assets/images/background-image-home.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: Color(0xFFF1F4FB),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
                        });
                      },
                      icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFA5636),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginAndRegisterPage()));
                        });
                      },
                      child: const Text(
                        "Войти",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                      children: List.generate(
                    listTabBar.length,
                    (index) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndexTabBar = index;
                          });
                        },
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(listTabBar[index].image,
                                      width: 23,
                                      height: 16,
                                      color: currentIndexTabBar == index
                                          ? Color(0xFF1A2B47)
                                          : Color(0xFF005BFE)),
                                  const SizedBox(width: 5),
                                  Text(
                                    listTabBar[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: currentIndexTabBar == index
                                            ? Color(0xFF1A2B47)
                                            : Color(0xFF005BFE)),
                                  )
                                ],
                              ),
                              currentIndexTabBar == index
                                  ? Divider(
                                      thickness: 2,
                                      color: Color(0xFF1A2B47),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
                  currentIndexTabBar == 1
                      ? ToursScreen() :
                  currentIndexTabBar == 2
                      ? FlightScreen()
                : HotelPage(),
            FollowScreen()
          ],
        ),
      ),
    );
  }
}

Container buildFollow(BuildContext context) {
  return Container(
    height: 300,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bottomInst.png"),
            fit: BoxFit.cover)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.8)),
              child: Column(
                children: [
                  Image.asset("assets/images/instagramm.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "@bilatontravel",
                    style: TextStyle(
                        color: UtilColor.getColorFromHex("5E6D77"),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width / 3,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: UtilColor.getColorFromHex("FA5636"),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class TabBarMain {
  String name;
  String image;

  TabBarMain(this.name, this.image);
}
