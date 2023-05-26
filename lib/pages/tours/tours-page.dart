import 'package:bron_hotel/pages/tours/tours-detail.dart';
import 'package:bron_hotel/pages/tours/tours-details-page.dart';
import 'package:flutter/material.dart';

import '../flights/tickets-filter-page.dart';

class ToursPage extends StatefulWidget {
  const ToursPage({Key? key}) : super(key: key);

  @override
  State<ToursPage> createState() => _ToursPageState();
}

class _ToursPageState extends State<ToursPage> {


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
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
          ),
          backgroundColor: const Color(0xFF1A2B47),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TicketsFilterPage()));
                  });
                },
                icon: Image.asset("assets/icons/filters.png")
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric( vertical: 20),
          children: [
            const Center(
              child: Text(
                  "Цена на 1 человека от 200\$ , 7 ночей",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Center(
              child: Text(
                "Динамика цен на 1 человека",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontWeight: FontWeight.w300,
                    fontSize: 12
                ),
              ),
            ),
            const SizedBox(height: 15,),
            buildListDynamic(),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Показывать по рекомендации",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Color(0xFF005BFE),)
                ],
              ),
            ),
            Column(
              children: List.generate(5, (index) =>
                  buildListTours(context)
              )
            )

          ],
        ),
      ),
    );
  }

  Padding buildListTours(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.1094, 0.2966, 0.5543, 0.776],
                        colors: [
                          Color(0xFF005BFE),
                          Color.fromRGBO(0, 132, 254, 0.78),
                          Color.fromRGBO(36, 0, 254, 0.46),
                          Color.fromRGBO(36, 0, 254, 0.51),
                          Color.fromRGBO(0, 102, 254, 0.43),
                        ],
                      ),
                    ),
                    child: const Text(
                      "Едем с Bilaton",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ToursDetailsPage()));
                        });
                      });
                    },
                    child: Container(
                      height: 171,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/tours-image.png"),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFA5636),
                                  shape: BoxShape.circle
                                ),
                                child: const Center(
                                  child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF005BFE),
                                  shape: BoxShape.circle
                                ),
                                child: const Center(
                                  child: Text("%", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Text(
                                      "Beach Spa Resort",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: const [
                                        Text(
                                          "4,97",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18
                                          ),
                                        ),
                                        Icon(Icons.star, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, color: Color(0xFFACB5BE),),
                                  Text(
                                    "Мальдивы",
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
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/icons/tours-plane.png"),
                                      const Text(
                                        "45км",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                SizedBox(
                                  height: 45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/icons/tours-day.png"),
                                      const SizedBox(height: 4,),
                                      const Text(
                                        "100м",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                SizedBox(
                                  height: 45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/icons/tours-wifi.png"),
                                      const SizedBox(height: 4,),
                                      const Text(
                                        "Везде",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                SizedBox(
                                  height: 45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/icons/tours-tik.png"),
                                      const SizedBox(height: 4,),
                                      const Text(
                                        "Галька",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Icon(Icons.favorite_outline,)
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset("assets/icons/tours-day1.png"),
                            const SizedBox(width: 10,),
                            const Text(
                              "Собственный пляж",
                              style: TextStyle(
                                  color: Color(0xFF5E6D77),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10
                              ),
                            )

                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Моментальное потверждение",
                                  style: TextStyle(
                                      color: Color(0xFF34A853),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png"),

                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.home, color: Color(0xFFD80027),),
                                const SizedBox(width: 8,),
                                Image.asset("assets/icons/arrow-forward.png"),
                                const SizedBox(width: 8,),
                                Image.asset("assets/icons/tours-plane1.png"),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: const [
                            Text(
                              "Всего",
                              style: TextStyle(
                                  color: Color(0xFF5E6D77),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(width: 10,),
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
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Включает доплаты 0\$",
                                  style: TextStyle(
                                      color: Color(0xFF5E6D77),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png", color: const Color(0xFF5E6D77),),

                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF005BFE),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15))),
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ToursDetail()));
                                  });
                                },
                                child: const Text(
                                  "Смотреть",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }

  Container buildListDynamic() {
    return Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(30, (index) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Text(
                                "100\$",
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                height: 10,
                                width: 55,
                                color: const Color(0xFFD9D9D9),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "${index + 1}",
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                        )
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Июль",
                    style: TextStyle(
                        color: Color(0xFF5E6D77),
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
