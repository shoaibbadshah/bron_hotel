import 'dart:ui';

import 'package:bron_hotel/pages/settings/card-add-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  ScrollController controllerListView = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration:  BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "assets/images/blur-image.png",
              ),
              fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF1A2B47),
          centerTitle: true,
          title: Text(
            "Кошелек",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 5,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(colors: [Colors.white.withOpacity(0.1), Color(0xFF5F90F3).withOpacity(0.35),]),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 24,
                        spreadRadius: -1,
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0,4)
                      )
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/mir.png"),
                          Image.asset("assets/images/visa.png"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                            "1256 7889 3344 6651",
                          style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CardAddPage()));
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: MediaQuery.of(context).size.height / 10,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [Colors.white.withOpacity(0.1), Color(0xFF5F90F3).withOpacity(0.35),]),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 24,
                          spreadRadius: -1,
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0,4)
                        )
                      ],

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/addcard.png"),
                        SizedBox(width: 20,),
                        Text(
                          "Добавить карту",
                          style: TextStyle(
                              color: Color(0xFF005BFE),
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Divider(color: Color(0xFFD9D9D9),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Бонусы",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                Text(
                  "0 RUB",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(color: Color(0xFFD9D9D9),),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 7.2,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xFF005BFE))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/ipad.png"),
                      SizedBox(width: 10,),
                      Text(
                        "Нет доступных бонусов",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Соберите бонусы и оплатите ваши поездки",
                    style: TextStyle(
                        color: Color(0xFF5E6D77),
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Вопросы о Кошельке",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 15,),
                Column(
                  children: List.generate(5, (index) =>
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color: Color(0xFF1A2B47).withOpacity(0.1),
                                  offset: Offset(0,2)
                              )
                            ]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "На что можно потратить бонусы?",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF005BFE),)
                          ],
                        ),
                      ),
                  )
                )
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
