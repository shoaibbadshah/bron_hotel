import 'package:flutter/material.dart';

import '../../widgets/similar-hotels-widget.dart';
import 'flights-selection-page.dart';

class ToursDetails1Page extends StatefulWidget {
  const ToursDetails1Page({Key? key}) : super(key: key);

  @override
  State<ToursDetails1Page> createState() => _ToursDetails1PageState();
}

class _ToursDetails1PageState extends State<ToursDetails1Page> {
  int selectIndex = 0;
  int selectIndexTabBarView = 1;
  int selectTabBar = 0;

  List nameTabBar = [
    "Цены",
    "Описание номера",
  ];

  List<HotelsNameRating> listHotelsName = [
    HotelsNameRating("Pullman Maldives Maamutaa ", "4,97"),
    HotelsNameRating("Outrigger Konotta Maldives Resort ", "4,97"),
    HotelsNameRating("Raffles Maldives Meradhoo", "4,97"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Город вылета: Москва",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "с 24 августа на 8 ночей , 1 чел.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        const Divider(),
        const SizedBox(height: 15,),
        SizedBox(
          height: 160,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) =>
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectIndex = index;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4.1,
                                height: 112,
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    image: selectIndex == index ? const DecorationImage(
                                        image: AssetImage("assets/images/bg-tours-curved.png"),
                                        fit: BoxFit.fill
                                    ) : null
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "18 авг, чт",
                                        style: TextStyle(
                                            color: selectIndex == index ? Colors.white : const Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "от 2 100\$",
                                        style: TextStyle(
                                            color: selectIndex == index ? Colors.white : const Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "от 230\$/ночь",
                                        style: TextStyle(
                                            color: selectIndex == index ? Colors.white : const Color(0xFF5E6D77),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF1A2B47).withOpacity(0.1),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.bottomRight,
                child: Row(
                  children: const [
                    Text(
                      "Цены на туры обовятся через 22:04",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.access_time_outlined,  size: 18,)
                  ],
                ),

              )
            ],
          ),
        ),
        Container(
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
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Стандартный номер 15м²",
            style: TextStyle(
                color: const Color(0xFF1A2B47).withOpacity(0.85),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Column(
          children: [
            Row(
              children: List.generate(2, (index) =>
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectTabBar = index;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            nameTabBar[index],
                            style: TextStyle(
                                color: selectTabBar == index ? const Color(0xFF005BFE) : const Color(0xFF5E6D77),
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                            ),
                          ),
                          Divider(thickness: 2, color: selectTabBar == index ? const Color(0xFF005BFE) : const Color(0xFFD9D9D9))
                        ],
                      ),
                    ),
                  ),
              )
            ),
          ],
        ),
        selectTabBar == 0
        ? buildPrice()
        : buildDescription(context),
      ],
    );
  }

  SingleChildScrollView buildPrice() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(5, (index) =>
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectIndexTabBarView = index;
                  });
                },
                child: Container(
                  width: 180,
                  color: selectIndexTabBarView == index ? const Color(0xFF005BFE).withOpacity(0.06) : Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "3",
                                      style: TextStyle(
                                          color: Color(0xFF1A2B47),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image.asset("assets/icons/moon-tours.png"),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                const Expanded(
                                  child: Text(
                                    "до 25 авг, чт",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "Завтрак включен",
                              style: TextStyle(
                                  color: Color(0xFF005BFE),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "2400\$",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color(0xFFD80027),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF1A2B47),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "2600\$",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),
                                  Text(
                                    "С перелетом",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "420\$/ночь",
                              style: TextStyle(
                                  color: Color(0xFF5E6D77),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const Text(
                                  "Документы сразу",
                                  style: TextStyle(
                                      color: Color(0xFFFA5636),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png", color: const Color(0xFFFA5636),)

                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/present-tours.png"),
                                const SizedBox(width: 5,),
                                const Icon(Icons.home, color: Color(0xFFC4C4C4),),
                                const SizedBox(width: 5,),
                                Image.asset("assets/icons/tours-plane2.png")
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                const Text(
                                  "Едем с Bilaton",
                                  style: TextStyle(
                                      color: Color(0xFF005BFE),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png", color: const Color(0xFF005BFE),)

                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: const [
                                Text(
                                  "Еще 7 предложений",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFF1A2B47),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "3",
                                      style: TextStyle(
                                          color: Color(0xFF1A2B47),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image.asset("assets/icons/moon-tours.png"),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                const Expanded(
                                  child: Text(
                                    "до 25 авг, чт",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "Завтрак включен",
                              style: TextStyle(
                                  color: Color(0xFF005BFE),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "2400\$",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color(0xFFD80027),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF1A2B47),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "2600\$",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),
                                  Text(
                                    "С перелетом",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "420\$/ночь",
                              style: TextStyle(
                                  color: Color(0xFF5E6D77),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const Text(
                                  "Документы сразу",
                                  style: TextStyle(
                                      color: Color(0xFFFA5636),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png", color: const Color(0xFFFA5636),)

                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/present-tours.png"),
                                const SizedBox(width: 5,),
                                const Icon(Icons.home, color: Color(0xFFC4C4C4),),
                                const SizedBox(width: 5,),
                                Image.asset("assets/icons/tours-plane2.png")
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                const Text(
                                  "Едем с Bilaton",
                                  style: TextStyle(
                                      color: Color(0xFF005BFE),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Image.asset("assets/icons/question.png", color: const Color(0xFF005BFE),)

                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: const [
                                Text(
                                  "Еще 7 предложений",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFF1A2B47),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
      );
  }

  Column buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHotelFacilities(),
        const SizedBox(height: 30,),
        buildHotelExcellent(),
        const SizedBox(height: 25,),
        buildAboutTheHotel(),
        const SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "БЛИЖАЙШИЕ АЭРОПОРТЫ",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                ),
              ),
              Text(
                "Laamu Atoll — 154 км",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "ОПЛАЧИВАЕТСЯ НА МЕСТЕ",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                ),
              ),
              Text(
                "Туристический налог (Green Tax) 6 \$/ночь за чел. (373 ₽)",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25,),
        buildInformation(),
        const SizedBox(height: 25,),
        Image.asset("assets/images/maps-tours.png", fit: BoxFit.cover,),
        const SizedBox(height: 25,),
        buildAllNumbers(),
        const SizedBox(height: 25,),
        buildAllNumber(),
        const SizedBox(height: 25,),
        buildHotelArea(),
        const SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SimilarHotelWidget(title: "Похожие отели", listNameRating: listHotelsName,),
        ),
        const SizedBox(height: 25,),
        Column(
          children: [
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 1.3, 46),
                      backgroundColor: const Color(0xFF1A2B47),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FlightSelectionPage()));
                    });
                  },
                  child: const Text(
                    "Выбрать тур",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  )),
            ),
            const SizedBox(height: 10,),
            const Text(
              "на 8 ночей , 1 человек, с перелетом",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12
              ),
            ),

          ],
        ),
        const SizedBox(height: 25,),
      ],
    );
  }

  Padding buildHotelArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Территория отеля",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "магазин сувениров, библиотека, рестораны(шведский стол), прачечная, бар, тв зал, обмен валюты, спа центр, сейфы для хранения ценностей",
            style: TextStyle(
                color: Color(0xFF5E6D77),
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
          ),
        ],
      ),
    );
  }

  Padding buildAllNumber() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Во всех номерах",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "Катамаран платно, футбол, каноэ, волейбол, дайвинг центр, снорклинг",
            style: TextStyle(
                color: Color(0xFF5E6D77),
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),
          ),
        ],
      ),
    );
  }

  Padding buildAllNumbers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Во всех номерах",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Image.asset("assets/icons/tv-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "телевизор: плазменная манель",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/terass-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "терасса",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/cond-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "кондиционер",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/phone-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "телефон",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/coffe-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "набор для приготовления кофе",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/ubor-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "ежедневная уборка номеров",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/ubor1-tours.png"),
              const SizedBox(width: 10,),
              const Expanded(
                child: Text(
                  "ежедневная уборка номеров",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding buildInformation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(108.45 * 3.14/180), // convert angle degree to radians
            stops: [0.0095, 0.5559, 0.992],
            colors: [
              Color.fromRGBO(95, 144, 243, 0.08),
              Color.fromRGBO(95, 144, 243, 0.17),
              Color.fromRGBO(95, 144, 243, 0.03),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Важная информация",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Прибытие",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w300,
                                fontSize: 12
                            ),
                          ),
                          Text(
                            "12:00 AM",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Выезд",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w300,
                                fontSize: 12
                            ),
                          ),
                          Text(
                            "11:00 AM",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Divider(),
            const SizedBox(height: 15,),
            Row(
              children: const [
                Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    "Самостоятельное прибытие (Мини-сейф)",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    "Курение запрещено",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    "Нельзя с питомцами",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    "Ознакомьтесь с правилами отмены. Они будут действовать, даже если вы отмените бронирование из-за коронавируса.",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Padding buildHotelExcellent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 43,
                width: 43,
                decoration: const BoxDecoration(
                    color: Color(0xFFFA5636),
                    shape: BoxShape.circle
                ),
                child: const Center(
                  child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: Text(
                  "Удобства в отеле",
                  style: TextStyle(
                      color: const Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              "Превосходный клубный отель. Рядом с пляжем. Прекрасный номер. Прекрасный пляж.",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontWeight: FontWeight.w400,
                  fontSize: 12
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Рейтинг формируется на основании 1372 отзыва туристов, которые были в этом отеле сервисом TrustYou ",
            style: TextStyle(
                color: Color(0xFF898989),
                fontWeight: FontWeight.w500,
                fontSize: 12
            ),
          ),
          const SizedBox(height: 20,),
          buildTextExcellent("Номер", "9.3", "Современные просторные номера с хорошо укомплектованным мини-баром и впечатляющим видом из окон. Удобные кровати и прочая мебель, чистые номера и хороший кондиционер. Чистые большие ванные комнаты. Неплохое состояние номеров. Отличный душ.",),
          const SizedBox(height: 20,),
          buildTextExcellent("Сервис", "9.1", "Приветливый персонал, отличная уборка, прекрасные экскурсоводы. Очень профессиональная работа официантов, сотрудников стойки регистрации и менеджеров. Хорошая команда аниматоров. Великолепное обслуживание номеров. Посредственный уход за детьми. Трансфер был нормальный.",),
          const SizedBox(height: 20,),
          buildTextExcellent("Пляж", "9.1", "Прекрасный чистый пляж, который отлично подходит для спорта.",),
          const SizedBox(height: 20,),
          buildTextExcellent("Расположение", "8.8", "Отличное расположение рядом с пляжем.",),
          const SizedBox(height: 20,),
          buildTextExcellent("Завтрак", "8.8", "Вкусный завтрак",),
          const SizedBox(height: 20,),
          buildTextExcellent("Чистота", "8.8", "Оснащение отеля чистое. Чистые номера, ванные комнаты и бассейн. Обеденный зал мог бы быть почище.",),
        ],
      ),
    );
  }

  Padding buildAboutTheHotel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Об отеле Beach Spa Resort",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w700,
                fontSize: 16
            ),
          ),
          const SizedBox(height: 15,),
          Text(
            "Построен: 2016 г.\nРасположен: на атолле Гаафу Далу, в 400 км от международного аэропорта Хулуле (г. Мале).\nТрансфер: 50 минут на самолете внутренних авиалиний до аэропорта Каадеду + 10 минут на скоростном катере до отеля.\nСостоит из комплекса вилл.\nВсего 120 номеров.\nПляж: собственный песчаный пляж в 50 м от отеля (1 береговая линия). Зонтики, шезлонги: бесплатно.\nРазмеры острова: 500 х 200 м.\nК оплате принимаются карты: American Express, Visa, MasterCard, JCB.\nНомер телефона: +960 684-4888.\nАдрес: Gaafu Dhaalu Atoll.",
            style: TextStyle(
                color: const Color(0xFF1A2B47).withOpacity(0.85),
                fontWeight: FontWeight.w500,
                fontSize: 12
            ),
          ),

        ],
      ),
    );
  }

  Column buildTextExcellent(String name, number, descriptions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w600,
                  fontSize: 14
              ),
            ),
            const SizedBox(width: 20,),
            Text(
              number,
              style: const TextStyle(
                  color: Color(0xFF005BFE),
                  fontWeight: FontWeight.w600,
                  fontSize: 14
              ),
            ),

          ],
        ),
        const SizedBox(height: 10,),
        Text(
          descriptions,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 12
          ),
        ),
      ],
    );
  }

  Padding buildHotelFacilities() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Удобства в отеле",
            style: TextStyle(
                color: const Color(0xFF1A2B47).withOpacity(0.85),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/tours-wifi.png", color: const Color(0xFF005BFE),),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Бесплатнй Wifi",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "На всей территории отеля и в номерах",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/food-tours.png",),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ресторан",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Здесь можно скоротать время за коктейлем",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/p2-tours.png"),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Стоянка",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Бесплатная парковка для машин",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/fitnes-tours.png"),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Фитнесс центр",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Современные тренажоры, спа, бассейн",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/basseyn-tours.png"),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Бассейн",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Можно поплавать, если рядом нет моря или к нему просто не хочется идти",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/beach-tours.png"),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1я линия",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "До пляжа всего 50 м",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
