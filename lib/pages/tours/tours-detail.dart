import 'package:bron_hotel/pages/tours/tours-details-page.dart';
import 'package:bron_hotel/pages/tours/tours-details1-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToursDetail extends StatefulWidget {
  const ToursDetail({Key? key}) : super(key: key);

  @override
  State<ToursDetail> createState() => _ToursDetailState();
}

class _ToursDetailState extends State<ToursDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Мальдивы",
              style: TextStyle(
                color: Color(0xFFF1F4FB),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "23 - 30 июля , 1 чел.",
              style: TextStyle(
                color: Color(0xFFA0AFCC),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                 //Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsFilterPage()));
                });
              },
              icon: Image.asset("assets/icons/filters.png")
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          //ToursDetailsPage(),
          ToursDetails1Page(),
        ],
      ),
    );
  }
}
