import 'dart:ui';

import 'package:bron_hotel/data/popular-direcrion.dart';
import 'package:bron_hotel/pages/profile-page.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentValue = 0;
  int currentIndexTabBar = 0;
  String gender = "";
  bool activeRadio = false;
  ScrollController _controller = ScrollController();

  List<TabBarMain> listTabBar = [
    TabBarMain("Hotel", "assets/images/stays.png"),
    TabBarMain("Tours", 'assets/images/tours.png'),
    TabBarMain("Flights", 'assets/images/flights.png'),
  ];

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
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: Color(0xFFF1F4FB),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFA5636),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    });
                  },
                  child: const Text(
                    "Войти",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                      children: List.generate(
                    listTabBar.length,
                    (index) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndexTabBar = index;
                          });
                        },
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(listTabBar[index].image,
                                      width: 23,
                                      height: 16,
                                      color: currentIndexTabBar == index
                                          ? Color(0xFF1A2B47)
                                          : Color(0xFF005BFE)),
                                  const SizedBox(width: 5),
                                  Text(
                                    listTabBar[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: currentIndexTabBar == index
                                            ? Color(0xFF1A2B47)
                                            : Color(0xFF005BFE)),
                                  )
                                ],
                              ),
                              currentIndexTabBar == index
                                  ? Divider(
                                      thickness: 2,
                                      color: Color(0xFF1A2B47),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
                  currentIndexTabBar == 1
                      ? Container() :
                  currentIndexTabBar == 2
                      ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildRadioButtonFlights(),
                      gender == "there"
                          ? buildThereFlights(context)
                          : gender == "oneway"
                              ? buildOnewayFlights(context)
                              : buildDifficultFlights(context),
                      SizedBox(
                        height: 30,
                      ),
                      buildViewCountryFlights(),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Популярные направления",
                          style: TextStyle(
                              color: Color(0xFF1A2B47).withOpacity(0.85),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildListPopularCountryFlights(),
                      SizedBox(
                        height: 30,
                      ),
                      buildFAQ(),
                    ],
                  )
                : buildMain(context),
            buildFollow(context)
          ],
        ),
      ),
    );
  }

  Center buildListPopularCountryFlights() {
    return Center(
      child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 20,
          spacing: 20,
          children: listPopularCountry
              .map((e) => Container(
                    width: 165,
                    height: 192,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF000000).withOpacity(0.1),
                              blurRadius: 26,
                              spreadRadius: -1,
                              offset: Offset(5, 8))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          e.image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          e.country,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Билеты от ${e.price.toString()}",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5E6D77),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ))
              .toList()),
    );
  }


  Container buildViewCountryFlights() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Мы рекомендуем страны для отдыха, путешествий и работы.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF5F90F3),
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 260,
            child: Text(
              "Мы выбираем наилучшие страны и города,а вы выбираете нас для незабываемых моментов для вашей жизни.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF5E6D77),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 36,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF1A2B47),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Показать 15 стран",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column buildDifficultFlights(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Сочи',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFF8B98A0),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/icons/horizUp.png"),
              ),
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Москва',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: '23.07.2022',
              hintStyle: TextStyle(
                  color: Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/calendar.png"),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Сочи',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFF8B98A0),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/icons/horizUp.png"),
              ),
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Москва',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: '23.07.2022',
              hintStyle: TextStyle(
                  color: Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/calendar.png"),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFFA5636),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Добавить перелет",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: '1 пассажир, эконом',
              hintStyle: TextStyle(
                  color: Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: const Text(
                "Поиск",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )),
        ),
      ],
    );
  }

  Column buildOnewayFlights(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Сочи',
                      hintStyle: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Москва',
                      hintStyle: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 45,
                right: 45,
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFF8B98A0),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icons/arrowUp.png"),
                )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' 23.07.2022',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Когда',
                    hintStyle: TextStyle(
                        color: Color(0xFFACB5BE).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: '1 пассажир, эконом',
              hintStyle: TextStyle(
                  color: Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CheckboxListTile(
            activeColor: Colors.white,
            checkColor: Color(0xFF005BFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
            ),
            side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(width: 1.0, color: Color(0xFF005BFE)),
            ),
            title: Text(
              "Только рейсы без пересадок",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            value: true,
            contentPadding: EdgeInsets.zero,
            onChanged: (newValue) {},
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: const Text(
                "Поиск",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )),
        ),
      ],
    );
  }

  Column buildThereFlights(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Сочи',
                      hintStyle: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Москва',
                      hintStyle: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 45,
                right: 45,
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFF8B98A0),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icons/arrowUp.png"),
                )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' 23.07.2022',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' 28.07.2022',
                    hintStyle: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: '1 пассажир, эконом',
              hintStyle: TextStyle(
                  color: Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CheckboxListTile(
            activeColor: Colors.white,
            checkColor: Color(0xFF005BFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
            ),
            side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(width: 1.0, color: Color(0xFF005BFE)),
            ),
            title: Text(
              "Только рейсы без пересадок",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            value: true,
            contentPadding: EdgeInsets.zero,
            onChanged: (newValue) {},
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: const Text(
                "Поиск",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )),
        ),
      ],
    );
  }

  Column buildRadioButtonFlights() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: ListTile(
                title: Text(
                  'Туда-обратно',
                  style: TextStyle(
                      color: gender == "there"
                          ? Color(0xFF005BFE)
                          : Color(0xFF1A2B47),
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: Radio(
                  activeColor: Color(0xFF005BFE),
                  value: "there",
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0xFF005BFE)),
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  'В одну сторону',
                  style: TextStyle(
                      color: gender == "oneway"
                          ? Color(0xFF005BFE)
                          : Color(0xFF1A2B47),
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: Radio(
                  activeColor: Color(0xFF005BFE),
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0xFF005BFE)),
                  value: "oneway",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        ListTile(
          onTap: () {
            setState(() {});
          },
          title: Text(
            'Сложный маршрут',
            style: TextStyle(
                color: gender == "difficult"
                    ? Color(0xFF005BFE)
                    : Color(0xFF1A2B47),
                fontWeight: FontWeight.w700,
                fontSize: 14),
          ),
          horizontalTitleGap: 0,
          contentPadding: EdgeInsets.zero,
          leading: Radio(
            activeColor: Color(0xFF005BFE),
            fillColor:
                MaterialStateColor.resolveWith((states) => Color(0xFF005BFE)),
            value: "difficult",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
        ),
      ],
    );
  }

  Column buildMain(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'куда',
              prefixIcon:
                  Icon(Icons.location_on_outlined, color: Color(0xFF1A2B48)),
              hintStyle: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: const TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Заезд',
                    hintStyle: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: const TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: ' Выезд',
                    hintStyle: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height / 13.6,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      'Взрослых',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    Text(
                      'Детей',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '0',
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    Text(
                      'Номеров',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CheckboxListTile(
            activeColor: Colors.blue,
            title: const Text("Я путешествую по работе"),
            value: true,
            contentPadding: EdgeInsets.zero,
            onChanged: (newValue) {},
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: const Text(
                "Поиск",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              )),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 8.6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 20, right: 50)
                      : const EdgeInsets.only(right: 50),
                  child: Column(
                    children: [
                      Image.asset('assets/images/tropical.png'),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Tropical",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFF1A2B47)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 2,
                        width: 50,
                        color: Color(0xFF1A2B47),
                      )
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: _buildLocationMain(_controller, currentValue),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                    color: Color(0xFF1A2B47).withOpacity(0.01),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Color(0xFF5F90F3).withOpacity(0.05),
                          offset: Offset(0, 0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Let\'s choose randomly',
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.97,
                            height: 165,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/newParis.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'China',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 42,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Rancho"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.97,
                            height: 165,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/newParis.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'China',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 42,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Rancho"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "If you have not decided",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "where to rest",
                            style: TextStyle(
                              color: Color(0xFF005BFE),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "we will help you",
                            style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(196, 50),
                              backgroundColor: const Color(0xFF1A2B47),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {},
                          child: const Text(
                            "Get started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top destinations\nfor beach lovers",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      5,
                      (index) => _buildListTopMain("assets/images/ozer.png",
                          "Bora Bora, French Polynesia", "375 hotels")),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top Hotels",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Here you can find the best hotels",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      5,
                      (index) => _buildListTopMain(
                          "assets/images/ozer.png",
                          "Amsterdam Open Boat Canal Cruise - Live Guide from Anne Frank House",
                          "from \$21 per adult")),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(color: Color(0xFF1A2B47)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    letterSpacing: 2,
                    height: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: Image.asset("assets/images/other1.png"))
            ],
          ),
        ),
        buildSubscribeMain(context),
      ],
    );
  }
}

Column buildFAQ() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Часто задаваемые вопросы",
          style: TextStyle(
              color: Color(0xFF1A2B47).withOpacity(0.85),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Мне не пришёл билет. Что делать?",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Я хочу вернуть билет. Как мне это сделать?",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Допущена ошибка в данных при бронировании.Как исправить?",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Как добавить багаж?",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 38,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Смотреть все",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}

Widget _buildListTopMain(String imageName, name, subTitle) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageName),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 220,
                child: Text(
                  name,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

///Build popular UI
Widget _buildLocationMain(ScrollController controller, int currentValue) {
  Widget content = ListView.builder(
    controller: controller,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 165,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/newParis.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Paris',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Rancho"),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Text(
                            " 7 spaces ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.circle,
                            size: 3,
                            color: Colors.white,
                          ),
                          Text(
                            " 7 Hotels ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.circle,
                            size: 3,
                            color: Colors.white,
                          ),
                          Text(
                            " 7 Tourss ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 10)
        ],
      );
    },
    itemCount: List.generate(8, (index) => index).length,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Destinations',
            style: TextStyle(
                color: Color(0xFf1A2B47),
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ],
      ),
      const SizedBox(height: 15),
      SizedBox(
        height: 200,
        child: content,
      ),
      SizedBox(
        height: 20,
      ),
      Center(
        child: DotsIndicator(
          dotsCount: 4,
          position: currentValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(30.0, 9.0),
            color: Color(0xFFDDDDDD),
            activeColor: Color(0xFF1A2B47),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      )
    ],
  );
}

ClipRRect buildSubscribeMain(BuildContext context) {
  return ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          color: Color(0xFF005BFE).withOpacity(0.1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/tree.png"),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get Updates & More",
                      style: TextStyle(
                          color: UtilColor.getColorFromHex("1A2B47"),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        "Thoughful thoughts to your inbox gfng",
                        style: TextStyle(
                            color: UtilColor.getColorFromHex("1A2B47"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              autocorrect: true,
              decoration: InputDecoration(
                suffixIcon: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color:
                          UtilColor.getColorFromHex("1A2B47").withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                hintText: 'Your Email',
                contentPadding: EdgeInsets.only(left: 20),
                hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Container buildFollow(BuildContext context) {
  return Container(
    height: 300,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bottomInst.png"),
            fit: BoxFit.cover)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.8)),
              child: Column(
                children: [
                  Image.asset("assets/images/instagramm.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "@bilatontravel",
                    style: TextStyle(
                        color: UtilColor.getColorFromHex("5E6D77"),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width / 3,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: UtilColor.getColorFromHex("FA5636"),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class TabBarMain {
  String name;
  String image;

  TabBarMain(this.name, this.image);
}
