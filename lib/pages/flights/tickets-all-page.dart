import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TicketsAllPage extends StatefulWidget {
  const TicketsAllPage({Key? key}) : super(key: key);

  @override
  State<TicketsAllPage> createState() => _TicketsAllPageState();
}

class _TicketsAllPageState extends State<TicketsAllPage> {
  bool _switchValue = false;

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
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          ),
          backgroundColor: Color(0xFF1A2B47),
          centerTitle: true,
          title: Text(
            "Все билеты",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){
                  setState(() {

                  });
                },
                icon: Icon(Icons.notifications_none)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: VerticalDivider(thickness: 1, color: Color(0xFFACB5BE).withOpacity(0.25),),
            ),
            IconButton(
                onPressed: (){
                  setState(() {

                  });
                },
                icon: Icon(Icons.ios_share)
            ),

          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            Column(
              children: [
                Text("6799₽", style: TextStyle(color: Color(0xFF1A2B47), fontWeight: FontWeight.w600, fontSize: 32),),
                SizedBox(height: 5,),
                Text("Билет с пересадкой", style: TextStyle(color: Color(0xFF005BFE), fontWeight: FontWeight.w400, fontSize: 14),)
              ],
            ),
            SizedBox(height: 30,),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFDFDFDF).withOpacity(0.15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0, 1),
                            color: Color(0xFF5F90F3).withOpacity(0.05)
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Багаж включен", style: TextStyle(color: Color(0xFF1A2B47), fontWeight: FontWeight.w500, fontSize: 16),),
                      Transform.scale(
                        scale: 0.9,
                        child: CupertinoSwitch(
                          activeColor: Color(0xFF005BFE),
                          trackColor: Color(0xFF1A2B47).withOpacity(0.25),
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Сочи - Москва", style: TextStyle(color: Color(0xFF1A2B47), fontWeight: FontWeight.w600, fontSize: 16),),
                        SizedBox(height: 5,),
                        Text("4 Июн 2022, сб", style: TextStyle(color: Color(0xFF1A2B47), fontWeight: FontWeight.w400, fontSize: 14),)
                      ],
                    ),
                    Text("В пути 3ч 30м", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontWeight: FontWeight.w600, fontSize: 16),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF5F90F3).withOpacity(0.1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/s7.png"),
                          SizedBox(width: 10,),
                          Text("S7 Airlines", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontWeight: FontWeight.w600, fontSize: 16),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF5F90F3).withOpacity(0.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 2,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5F90F3).withOpacity(0.8),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          color:Color(0xFF5F90F3).withOpacity(0.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                     children: [
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             "13:45",
                                             style: TextStyle(
                                                 color: Color(0xFF1A2B47),
                                                  fontSize: 18,
                                               fontWeight: FontWeight.w500
                                             ),
                                           ),
                                           Text(
                                             "4 июн,сб",
                                             style: TextStyle(
                                                 color: Color(0xFF5C5C5C),
                                                  fontSize: 12,
                                               fontWeight: FontWeight.w500
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(width: 20,),
                                       Expanded(
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               "Москва, Домодедово",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                    fontSize: 14,
                                                 fontWeight: FontWeight.w500
                                               ),
                                             ),
                                             Text(
                                               "MOW",
                                               style: TextStyle(
                                                   color: Color(0xFF1A2B47),
                                                    fontSize: 14,
                                                 fontWeight: FontWeight.w500
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),
                                    SizedBox(height: 10,),
                                    Divider(thickness: 1, color: Color(0xFFD9D9D9),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "13:45",
                                              style: TextStyle(
                                                  color: Color(0xFF1A2B47),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              "4 июн,сб",
                                              style: TextStyle(
                                                  color: Color(0xFF5C5C5C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Санкт Питербург",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              Text(
                                                "PET",
                                                style: TextStyle(
                                                    color: Color(0xFF1A2B47),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 3,),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF5F90F3).withOpacity(0.1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/utair.png"),
                          SizedBox(width: 10,),
                          Text("ЮТР компания", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontWeight: FontWeight.w600, fontSize: 16),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF5F90F3).withOpacity(0.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 2,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5F90F3).withOpacity(0.8),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          color:Color(0xFF5F90F3).withOpacity(0.8),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                     children: [
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             "13:45",
                                             style: TextStyle(
                                                 color: Color(0xFF1A2B47),
                                                  fontSize: 18,
                                               fontWeight: FontWeight.w500
                                             ),
                                           ),
                                           Text(
                                             "4 июн,сб",
                                             style: TextStyle(
                                                 color: Color(0xFF5C5C5C),
                                                  fontSize: 12,
                                               fontWeight: FontWeight.w500
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(width: 20,),
                                       Expanded(
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               "Москва, Домодедово",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                    fontSize: 14,
                                                 fontWeight: FontWeight.w500
                                               ),
                                             ),
                                             Text(
                                               "MOW",
                                               style: TextStyle(
                                                   color: Color(0xFF1A2B47),
                                                    fontSize: 14,
                                                 fontWeight: FontWeight.w500
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),
                                    SizedBox(height: 10,),
                                    Divider(thickness: 1, color: Color(0xFFD9D9D9),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "13:45",
                                              style: TextStyle(
                                                  color: Color(0xFF1A2B47),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              "4 июн,сб",
                                              style: TextStyle(
                                                  color: Color(0xFF5C5C5C),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Санкт Питербург",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              Text(
                                                "PET",
                                                style: TextStyle(
                                                    color: Color(0xFF1A2B47),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: const Color(0xFF005BFE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: const Text(
                  "Купить билет",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
