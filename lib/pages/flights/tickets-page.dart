import 'package:bron_hotel/pages/flights/tickets-all-page.dart';
import 'package:bron_hotel/pages/flights/tickets-filter-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
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
          toolbarHeight: 114,
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
                  "Сочи - Москва",
                style: TextStyle(
                  color: Color(0xFFF1F4FB),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                  "23 - 28 июля , 1 пассажир",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsFilterPage()));
                  });
                },
                icon: Image.asset("assets/icons/filters.png")
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/graphic.png"),
                      SizedBox(width: 5,),
                      Text(
                          "График цен",
                          style: TextStyle(
                            color: Color(0xFF005BFE),
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                          ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Только прямые",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1A2B47).withOpacity(0.75),
                        fontWeight: FontWeight.w500,),
                    ),
                    SizedBox(width: 10,),
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
              ],
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsAllPage()));
                });
              },
                child: buildAdvertising()
            ),
            SizedBox(height: 15,),
            buildCheapest(),
            SizedBox(height: 15,),
            buildRecommended(),
          ],
        ),
      ),
    );
  }

  Container buildRecommended() {
    return Container(
            decoration: BoxDecoration(
                color: Color(0xFF5F90F3),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Рекомендуемый", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6799₽", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 20, fontWeight: FontWeight.w600),),
                          Row(
                            children: [
                              Image.asset("assets/images/utair.png"),
                              SizedBox(width: 5,),
                              Image.asset("assets/images/airs.png"),
                              SizedBox(width: 5,),
                              Image.asset("assets/images/s7.png"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("13:45 - 17:15", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 14, fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text("MOW  PET", style: TextStyle(color: Color(0xFFA0AFCC), fontSize: 12, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Без пересадок", style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text("1ч Вороньеж", style: TextStyle(color: Color(0xFF8B98A0), fontSize: 12, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text("2ч Волгоград", style: TextStyle(color: Color(0xFF8B98A0), fontSize: 12, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Text("3ч 30мВ пути ", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("13:45 - 17:15", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 14, fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text("MOW  PET", style: TextStyle(color: Color(0xFFA0AFCC), fontSize: 12, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Text("Без пересадок", style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w500),),
                          Text("3ч 30мВ пути ", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container buildCheapest() {
    return Container(
            decoration: BoxDecoration(
                color: Color(0xFF0052B4),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Самый дешёвый", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6799₽", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 20, fontWeight: FontWeight.w600),),
                          Text("Без пересадок", style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w500),),
                          Image.asset("assets/images/s7.png")
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("13:45 - 17:15", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 14, fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text("MOW  PET", style: TextStyle(color: Color(0xFFA0AFCC), fontSize: 12, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text("3ч 30мВ пути ", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container buildAdvertising() {
    return Container(
            decoration: BoxDecoration(
                color: Color(0xFF1A2B47),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Реклама", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6799₽", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 20, fontWeight: FontWeight.w600),),
                          Text("Без пересадок", style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w500),),
                          Image.asset("assets/images/s7.png")
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("13:45 - 17:15", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 14, fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text("MOW  PET", style: TextStyle(color: Color(0xFFA0AFCC), fontSize: 12, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text("3ч 30мВ пути ", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 12, fontWeight: FontWeight.w500),),
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
