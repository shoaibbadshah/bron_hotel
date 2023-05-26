import 'package:bron_hotel/pages/about/support-page.dart';
import 'package:bron_hotel/pages/settings/%D1%81ustomer-page.dart';
import 'package:bron_hotel/pages/settings/bilaton-blog-page.dart';
import 'package:bron_hotel/pages/settings/currency-page.dart';
import 'package:bron_hotel/pages/settings/history-of-booking-page.dart';
import 'package:bron_hotel/pages/settings/profile-page.dart';
import 'package:bron_hotel/pages/settings/vendor-setting-page.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xFF1A2B47), shape: BoxShape.circle),
              child: const Text(
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
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color(0xFf005BFE),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "System admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            subtitle: const Text(
              "SvetaIsaeva89@mail.ru",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const VendorSettingPage()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0,1),
                        color: const Color(0xFF5F90F3).withOpacity(0.05)
                      )
                    ]
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/setting.png"),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerPage()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0,1),
                        color: const Color(0xFF5F90F3).withOpacity(0.05)
                      )
                    ]
                  ),
                  child: Center(
                    child: Image.asset("assets/icons/znak.png"),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF005BFE).withOpacity(0.03),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0,1),
                        color: const Color(0xFF5F90F3).withOpacity(0.05)
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BilatonBlogPage()));
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
                      decoration: const BoxDecoration(
                          color: Color(0xFF005BFE),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(3),
                              bottomRight: Radius.circular(3))),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Блог сообщества",
                      style: TextStyle(
                          color: Color(0xFF005BFE),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryOfBookingPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "История бронирования",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Избранные",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguagePage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Язык",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrencyPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Валюта",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/reference.png"),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Справка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/exit.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
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
