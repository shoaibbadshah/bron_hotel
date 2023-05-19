import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

class Error404Page extends StatefulWidget {
  const Error404Page({Key? key}) : super(key: key);

  @override
  State<Error404Page> createState() => _Error404PageState();
}

class _Error404PageState extends State<Error404Page> {
  ScrollController controllerListView = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(
              "assets/images/error-404.png",
            ),
            fit: BoxFit.cover,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
            controller: controllerListView,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            children: [
              Center(
                child: Image.asset(
                  'assets/images/newlogo.png',
                  width: 128,
                  height: 39,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Text(
                "404",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF005BFE).withOpacity(0.85),
                    fontSize: 100,
                    fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Text(
                    "OOPS!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 26,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Page not found.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),

                ],
              ),
              SizedBox(height: 25,),
              Text(
                "Sorry, the page you are looking\nfor, doesn’t exist.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 25,),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(MediaQuery.of(context).size.width / 1.8, 40),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                          });
                        },
                        child: const Text(
                          "Go Home",
                          style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(MediaQuery.of(context).size.width / 1.8, 40),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        child:  Text(
                          "Report Problem",
                          style: TextStyle(
                            color: Color(0xFF005BFE).withOpacity(0.63),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )),
                  ),


                ],
              ),
              SizedBox(height: 25,),
              Center(
                child: Text(
                  "or you can go to",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF1A2B47))
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/stays.png", color: Color(0xFF1A2B47), width: 24, height: 20),
                        SizedBox(height: 5,),
                        Text(
                          "Hotels",
                          style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF1A2B47))
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/tours.png', color:  Color(0xFF1A2B47), width: 24, height: 20),
                        SizedBox(height: 5,),
                        Text(
                          "Tours",
                          style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF1A2B47))
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/flights.png', color:  Color(0xFF1A2B47), width: 24, height: 20,),
                        SizedBox(height: 5,),
                        Text(
                          "Flights",
                          style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ]),
      ),
    );
  }
}
