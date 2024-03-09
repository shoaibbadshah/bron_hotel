import 'package:bron_hotel/pages/flights/tickets-page.dart';

import 'package:flutter/material.dart';

import '../../data/popular-direcrion.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  int currentValue = 0;
  int currentIndexTabBar = 0;
  String gender = "";
  bool activeRadio = false;
  int numberOfItems = 0;

  RadioButtonValue? _character = RadioButtonValue.economy;
//For demonstrate purpose I have added five static items


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildRadioButtonFlights(),
        gender == "there"
            ? buildThereFlights(context)
            : gender == "oneway"
            ? buildOnewayFlights(context)
            : buildDifficultFlights(context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsPage()));
                });
              },
              child: const Text(
                "Поиск",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )),
        ),
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


  Widget _incrementButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          numberOfItems++;
        });
      },
      child: Container(
          height: 28,
          decoration: BoxDecoration(
              color: Color(0xFF005BFE),
              shape: BoxShape.circle
          ),
          child: Center(child: Icon(Icons.add, color: Colors.white))
      ),
    );
  }

  Widget _decrementButton() {
    return GestureDetector(
        onTap: () {
          setState(() {
            numberOfItems--;
          });
        },
        child: Container(
          height: 28,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            shape: BoxShape.circle
          ),
            child: Center(child: Icon(Icons.remove, color: Colors.black87))
        ),
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
      ],
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
              GestureDetector(
                onTap: (){
                  setState(() {
                    _showModalPassengers(context);
                  });
                },
                child: Container(
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

  void _showModalPassengers(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.6,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 4,
                                width: 66,
                                decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    "Пассажиры",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Взрослые",
                                          style: TextStyle(
                                              color: Color(0xFF1A2B47),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "Старше 12 лет",
                                          style: TextStyle(
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        _decrementButton(),
                                        SizedBox(width: 10,),
                                        Text(
                                          "$numberOfItems",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 10,),
                                        _incrementButton(),

                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Дети",
                                          style: TextStyle(
                                              color: Color(0xFF1A2B47),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "Старше 12 лет",
                                          style: TextStyle(
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        _decrementButton(),
                                        SizedBox(width: 10,),
                                        Text(
                                          "$numberOfItems",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 10,),
                                        _incrementButton(),

                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Младенцы",
                                          style: TextStyle(
                                              color: Color(0xFF1A2B47),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "До 2 лет без места",
                                          style: TextStyle(
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        _decrementButton(),
                                        SizedBox(width: 10,),
                                        Text(
                                          "$numberOfItems",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 10,),
                                        _incrementButton(),

                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Divider(thickness: 2, color: Color(0xFFD9D9D9),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            ListTile(
                              title: Text(
                                'Эконом',
                                style: TextStyle(
                                    color:  Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              horizontalTitleGap: 0,
                              contentPadding: EdgeInsets.zero,
                              leading: Radio(
                                activeColor: Color(0xFF005BFE),
                                value: RadioButtonValue.economy,
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Color(0xFF005BFE)),
                                groupValue: _character,
                                onChanged: (value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Комфорт',
                                style: TextStyle(
                                    color:  Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              horizontalTitleGap: 0,
                              contentPadding: EdgeInsets.zero,
                              minLeadingWidth: 10,
                              leading: Radio(
                                activeColor: Color(0xFF005BFE),
                                value: RadioButtonValue.comfort,
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Color(0xFF005BFE)),
                                groupValue: _character,
                                onChanged: (value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Бизнес класс',
                                style: TextStyle(
                                    color:  Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              horizontalTitleGap: 0,
                              contentPadding: EdgeInsets.zero,
                              minLeadingWidth: 10,
                              leading: Radio(
                                activeColor: Color(0xFF005BFE),
                                value: RadioButtonValue.businessClass,
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Color(0xFF005BFE)),
                                groupValue: _character,
                                onChanged: (value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      );
                    });
              });
        });
  }

}
enum  RadioButtonValue { economy, comfort, businessClass }