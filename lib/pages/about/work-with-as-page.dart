import 'dart:ui';

import 'package:bron_hotel/pages/about/work-with-as-details-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class WorkWithUsPage extends StatefulWidget {
  const WorkWithUsPage({Key? key}) : super(key: key);

  @override
  State<WorkWithUsPage> createState() => _WorkWithUsPageState();
}

class _WorkWithUsPageState extends State<WorkWithUsPage> {
  ScrollController controllerListView = ScrollController();
  bool showAbout = false;
  bool readMore = false;
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
                  Image.asset("assets/icons/reference.png"),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
                        });
                      },
                      icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: EdgeInsets.symmetric(vertical: 20),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showAbout = !showAbout;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Справка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 10,),
                    showAbout
                        ? const Icon(Icons.keyboard_arrow_up, color: Color(0xFF1A2B47),)
                        : const Icon(Icons.keyboard_arrow_down, color: Color(0xFF1A2B47),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorkWithAsDetailsPage()));
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "Work with us",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "We are hiring\nGraphik designer",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: buildText("Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor ut aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor ut aliquam"),
                          ),
                          SizedBox(height: 15,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                readMore = !readMore;
                              });
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "Learn more",
                                  style: TextStyle(
                                      color: Color(0xFF005BFE),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 10,),
                                readMore
                                    ? const Icon(Icons.keyboard_arrow_right, color: Color(0xFF005BFE),)
                                    : const Icon(Icons.keyboard_arrow_down, color: Color(0xFF005BFE),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            buildFollow(context),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

  Text buildText(String text) {
    final lines = readMore ? null : 5;
    return Text(
         text,
      maxLines: lines,
      style: TextStyle(
          color: Color(0xFF5E6D77),
          fontSize: 15,
           fontWeight: FontWeight.w400,
        overflow: readMore ? TextOverflow.visible: TextOverflow.ellipsis,
      ),
      );
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
}
