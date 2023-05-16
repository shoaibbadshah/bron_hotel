import 'package:bron_hotel/utils/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/images/newlogo.png',
              width: 128,
              height: 39,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width / 1.5,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFFA5636),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Войти",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )),
                    VerticalDivider(
                      thickness: 3,
                      color: Colors.white,
                    ),
                    Expanded(
                      flex: 2,
                        child: Text(
                      "Регистрация",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF005BFE).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    Text(
                        "Стать партнером",
                        style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward, color: Color(0xFF005BFE),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          ListTile(
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
                          borderRadius: BorderRadius.only(topRight: Radius.circular(3), bottomRight:Radius.circular(3) )
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text("Блог сообщества", style: TextStyle(color: Color(0xFF005BFE), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
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
                    SizedBox(width: 20,),
                    Text("Язык", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
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
                    SizedBox(width: 20,),
                    Text("Валюта", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset("assets/icons/reference.png"),
                SizedBox(width: 5,),
                Text("Справка", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
