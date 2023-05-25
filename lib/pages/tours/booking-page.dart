import 'package:bron_hotel/pages/tours/booking-form-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int selectCard = 0;
  List imagesCard = [
    "assets/images/visa.png",
    "assets/icons/master-card.png",
  ];
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
              "Бронирование",
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
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.6,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/images-tours 2.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Beach Spa Resort",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "4,97",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),
                          ),
                          Icon(Icons.star, color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xFFACB5BE),),
                    Text(
                      "La Soukra, Tunis",
                      style: TextStyle(
                          color: Color(0xFFACB5BE),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Комнаты",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: Offset(0,8),
                                color: Colors.black.withOpacity(0.1)
                            )
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Double Room",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Image.asset("assets/icons/divan-tours.png"),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1 большая ",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                    ),
                                  ),
                                  Text(
                                    "двуспальная кровать",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Image.asset("assets/icons/divan2-tours.png"),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Гостиная 1",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                    ),
                                  ),
                                  Text(
                                    "1 диван - кровать",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ваша поездка",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 22,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "23 июл",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47).withOpacity(0.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                            VerticalDivider(),
                            Text(
                              "30 июл ",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47).withOpacity(0.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                            VerticalDivider(),
                            Text(
                              "7 ночей",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47).withOpacity(0.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                            VerticalDivider(),
                            Text(
                              "1 человек",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47).withOpacity(0.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF005BFE),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/edit-tours.png", width: 14, height: 14,),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Детализация цены",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "100 \$/ночь",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Хозяин / Татьяна",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF5E6D77)
                            ),
                            child: Center(
                              child: Text(
                                "T",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "200\$ x 6 ночей",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                            color: Color(0xFF5E6D77),
                            fontWeight: FontWeight.w400,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Text(
                      "1200 \$",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w400,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "Сбор за услуги",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Text(
                            "Bilaton",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFF1A2B47),
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "100 \$",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w400,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: Color(0xFFD9D9D9),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Всего (без учета налогов)",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF5E6D77),
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),
                      ),
                    ),
                    Text(
                      "1320 \$",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Оплатить с помощью",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(imagesCard.length, (index) =>
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectCard = index;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 65,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: selectCard == index ? Border.all(color: Color(0xFF005BFE)) : null,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 25,
                                    spreadRadius: 0,
                                    offset: Offset(0,7),
                                    color: Colors.black.withOpacity(0.1)
                                ),
                              ]
                          ),
                          child: Center(
                            child: Image.asset(imagesCard[index]),
                          ),
                        ),
                      )
                  )
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "70\$",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),
                      ),
                      Text(
                        "23 июл - 30 июл",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingFormPage()));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF005BFE),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "Забронировать",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
