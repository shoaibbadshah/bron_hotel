import 'package:bron_hotel/pages/tours/booking-page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/similar-hotels-widget.dart';

class GoPaymentToursPage extends StatefulWidget {
  const GoPaymentToursPage({Key? key}) : super(key: key);

  @override
  State<GoPaymentToursPage> createState() => _GoPaymentToursPageState();
}

class _GoPaymentToursPageState extends State<GoPaymentToursPage> {
  int selectIndex = 0;
  bool readMore = false;
  ScrollController controllerListView = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
  List<HotelsNameRating> listHotelsName = [
    HotelsNameRating("Pullman Maldives Maamutaa ", "4,97"),
    HotelsNameRating("Outrigger Konotta Maldives Resort ", "4,97"),
    HotelsNameRating("Raffles Maldives Meradhoo", "4,97"),
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
              "Тунис",
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
        controller: controllerListView,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: 233,
                  scrollDirection: Axis.horizontal,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  onPageChanged: (index, raison) {
                    setState(() {
                      selectIndex = index;
                    });
                    }
                ),
                items: [1,2,3,4,5].map((index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/images-tours 2.png"),
                                fit: BoxFit.fill
                            )
                        ),
                        child: index == 1  ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    " Beach Spa Resort",
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
                        ) : Container(),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectIndex == 0 ? Container() : IconButton(
                    onPressed: (){
                      setState(() {
                        buttonCarouselController.previousPage();
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios,   color: Colors.white,),
                  ),
                  selectIndex == 4 ? Container() : IconButton(
                    onPressed: (){
                      setState(() {
                        buttonCarouselController.nextPage();
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios,  color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_outline, color: Color(0xFF5E6D77)),
                    Text(
                      "Save ",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/icons/shares.png"),
                    SizedBox(width: 5,),
                    Text(
                      "Share",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/icons/pencil-edit.png",color: Color(0xFF5E6D77)),
                    Text(
                      " Review",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText("Прекрасный дом для отдыха с кикладской архитектурой, купающийся в свете с панорамными видами на синее Эгейское море.На минимальном расстоянии от песчаного пляжа Шинари и живописной рыбацкой деревни Лутра. Прекрасный дом для отдыха с кикладской архитектурой, купающийся в свете с панорамными видами на синее Эгейское море.На минимальном расстоянии от песчаного пляжа Шинари и живописной рыбацкой деревни Лутра"),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      readMore = !readMore;
                    });
                  },
                  child: Text(
                    "Показать еще",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        color: Color(0xFF005BFE),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          buildDescription(context),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()));
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
          SizedBox(height: 25,),

        ],
      ),
    );
  }
  Text buildText(String text) {
    final lines = readMore ? null : 5;
    return Text(
      text,
      maxLines: lines,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14
      ),
    );
  }

  Column buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHotelFacilities(),
        SizedBox(height: 30,),
        buildHotelExcellent(),
        SizedBox(height: 25,),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Выбрать тип комнаты",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                      child: Container(
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
                    ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25,),
        buildAboutTheHotel(),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        SizedBox(height: 25,),
        buildInformation(),
        SizedBox(height: 25,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/maps-tours.png", fit: BoxFit.cover,)
        ),
        SizedBox(height: 25,),
        buildAllNumbers(),
        SizedBox(height: 25,),
        buildAllNumber(),
        SizedBox(height: 25,),
        buildHotelArea(),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SimilarHotelWidget(title: "Похожие отели", listNameRating: listHotelsName,),
        ),
        SizedBox(height: 25,),
      ],
    );
  }

  Padding buildHotelArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        children: [
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
          Text(
            "Во всех номерах",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Image.asset("assets/icons/tv-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/terass-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/cond-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/phone-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/coffe-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/ubor-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/ubor1-tours.png"),
              SizedBox(width: 10,),
              Expanded(
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
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
            Text(
              "Важная информация",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                    children: [
                      Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
            SizedBox(height: 5,),
            Divider(),
            SizedBox(height: 15,),
            Row(
              children: [
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
            SizedBox(height: 10,),
            Row(
              children: [
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
            SizedBox(height: 10,),
            Row(
              children: [
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
            SizedBox(height: 10,),
            Row(
              children: [
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
                decoration: BoxDecoration(
                    color: Color(0xFFFA5636),
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Text(
                  "Удобства в отеле",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              "Превосходный клубный отель. Рядом с пляжем. Прекрасный номер. Прекрасный пляж.",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontWeight: FontWeight.w400,
                  fontSize: 12
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Рейтинг формируется на основании 1372 отзыва туристов, которые были в этом отеле сервисом TrustYou ",
            style: TextStyle(
                color: Color(0xFF898989),
                fontWeight: FontWeight.w500,
                fontSize: 12
            ),
          ),
          SizedBox(height: 20,),
          buildTextExcellent("Номер", "9.3", "Современные просторные номера с хорошо укомплектованным мини-баром и впечатляющим видом из окон. Удобные кровати и прочая мебель, чистые номера и хороший кондиционер. Чистые большие ванные комнаты. Неплохое состояние номеров. Отличный душ.",),
          SizedBox(height: 20,),
          buildTextExcellent("Сервис", "9.1", "Приветливый персонал, отличная уборка, прекрасные экскурсоводы. Очень профессиональная работа официантов, сотрудников стойки регистрации и менеджеров. Хорошая команда аниматоров. Великолепное обслуживание номеров. Посредственный уход за детьми. Трансфер был нормальный.",),
          SizedBox(height: 20,),
          buildTextExcellent("Пляж", "9.1", "Прекрасный чистый пляж, который отлично подходит для спорта.",),
          SizedBox(height: 20,),
          buildTextExcellent("Расположение", "8.8", "Отличное расположение рядом с пляжем.",),
          SizedBox(height: 20,),
          buildTextExcellent("Завтрак", "8.8", "Вкусный завтрак",),
          SizedBox(height: 20,),
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
          Text(
            "Об отеле Beach Spa Resort",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w700,
                fontSize: 16
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "Построен: 2016 г.\nРасположен: на атолле Гаафу Далу, в 400 км от международного аэропорта Хулуле (г. Мале).\nТрансфер: 50 минут на самолете внутренних авиалиний до аэропорта Каадеду + 10 минут на скоростном катере до отеля.\nСостоит из комплекса вилл.\nВсего 120 номеров.\nПляж: собственный песчаный пляж в 50 м от отеля (1 береговая линия). Зонтики, шезлонги: бесплатно.\nРазмеры острова: 500 х 200 м.\nК оплате принимаются карты: American Express, Visa, MasterCard, JCB.\nНомер телефона: +960 684-4888.\nАдрес: Gaafu Dhaalu Atoll.",
            style: TextStyle(
                color: Color(0xFF1A2B47).withOpacity(0.85),
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
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w600,
                  fontSize: 14
              ),
            ),
            SizedBox(width: 20,),
            Text(
              number,
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontWeight: FontWeight.w600,
                  fontSize: 14
              ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Text(
          descriptions,
          style: TextStyle(
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
                color: Color(0xFF1A2B47).withOpacity(0.85),
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/tours-wifi.png", color: Color(0xFF005BFE),),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Бесплатнй Wifi",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "На всей территории отеля и в номерах",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/food-tours.png",),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ресторан",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Здесь можно скоротать время за коктейлем",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/p2-tours.png"),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Стоянка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Бесплатная парковка для машин",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/fitnes-tours.png"),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Фитнесс центр",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Современные тренажоры, спа, бассейн",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/basseyn-tours.png"),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Бассейн",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "Можно поплавать, если рядом нет моря или к нему просто не хочется идти",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("assets/icons/beach-tours.png"),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1я линия",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    Text(
                      "До пляжа всего 50 м",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
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