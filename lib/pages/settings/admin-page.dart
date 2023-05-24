import 'package:bron_hotel/pages/about/about-us-mission.dart';
import 'package:bron_hotel/pages/about/support-page.dart';
import 'package:bron_hotel/pages/settings/%D1%81ustomer-page.dart';
import 'package:bron_hotel/pages/settings/blog-page.dart';
import 'package:bron_hotel/pages/settings/currency-page.dart';
import 'package:bron_hotel/pages/settings/history-of-booking-page.dart';
import 'package:bron_hotel/pages/settings/profile-page.dart';
import 'package:bron_hotel/pages/settings/vendor-setting-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'language-page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFF1A2B47), shape: BoxShape.circle),
              child: Text(
                "C",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            title: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFf005BFE),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "System admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            subtitle: Text(
              "SvetaIsaeva89@mail.ru",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VendorSettingPage()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0,1),
                        color: Color(0xFF5F90F3).withOpacity(0.05)
                      )
                    ]
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/setting.png"),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerPage()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0,1),
                        color: Color(0xFF5F90F3).withOpacity(0.05)
                      )
                    ]
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/znak.png"),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0,1),
                        color: Color(0xFF5F90F3).withOpacity(0.05)
                      )
                    ]
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/person1.png"),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BlogPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF005BFE),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(3),
                              bottomRight: Radius.circular(3))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Блог сообщества",
                      style: TextStyle(
                          color: Color(0xFF005BFE),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryOfBookingPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "История бронирования",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Избранные",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LanguagePage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Язык",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CurrencyPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Валюта",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/reference.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Справка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(color: Color(0xFFE2E2E2)),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Column(
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/exit.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Выйти",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
