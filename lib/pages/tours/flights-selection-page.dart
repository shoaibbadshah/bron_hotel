import 'package:bron_hotel/pages/tours/tourist-data-page.dart';

import 'package:flutter/material.dart';

class FlightSelectionPage extends StatefulWidget {
  const FlightSelectionPage({Key? key}) : super(key: key);

  @override
  State<FlightSelectionPage> createState() => _FlightSelectionPageState();
}

class _FlightSelectionPageState extends State<FlightSelectionPage> {
  bool readMore  = false;
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
              "Выбор перелета",
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
              icon: Image.asset("assets/icons/share-appbar.png")
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Выберите перелет и начните\nбронирование тура онлайн",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
          ),
          SizedBox(height: 10,),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Номер: 2962787619",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A2B47).withOpacity(0.17),
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: Center(
                    child: Text(
                      "Без визы",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10 ),
                  decoration: BoxDecoration(
                    color: Color(0xFFBBB472).withOpacity(0.17),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                    ),
                  )
                ),
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10 ),
                  decoration: BoxDecoration(
                    color: Color(0xFFBBB472).withOpacity(0.17),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildText("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard and typesetting industry. Lorem Ipsum has been the industry's standard "),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            readMore = !readMore;
                          });
                        },
                        child: Text(
                          "Показать больше",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF005BFE),
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                          ),
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 171,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
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
                      decoration: BoxDecoration(
                          color: Color(0xFFFA5636),
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color(0xFF005BFE),
                          shape: BoxShape.circle
                      ),
                      child: Center(
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
                        Expanded(
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
                            children: [
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
                      children: [
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
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF99BEFF), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Документы сразу",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF99BEFF), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Путешествие от Bilaton",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF99BEFF), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Входит в ТОП 5 отелей Мальдив",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF99BEFF), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Моментальное потверждение",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
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
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "В стоимость тура входит",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF1A2B47), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Стандартный номер",
                        style: TextStyle(
                            color: Color(0xFF5E6D77),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF1A2B47), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Завтрак , обед , ужин",
                        style: TextStyle(
                            color: Color(0xFF5E6D77),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF1A2B47), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Трансвер не включен в этот тур",
                        style: TextStyle(
                            color: Color(0xFF5E6D77),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF1A2B47), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Проверяем наличие трансфера",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.circle, color: Color(0xFF1A2B47), size: 7,),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Медстраховка отсуствует",
                        style: TextStyle(
                            color: Color(0xFFD80027).withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),

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
                Text(
                  "Все рейсы с этим туром",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/icons/shop-tours.png"),
                                  SizedBox(width: 5,),
                                  Text(
                                    "7kg",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Без пересадок",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Image.asset("assets/images/s7.png"),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "13:45",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                ),
                              ),
                              Text(
                                "3ч 30мВ пути ",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                ),
                              ),
                              Text(
                                "17:45",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MOW",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "PET",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "24 авг, ср",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Image.asset("assets/icons/pilot-two-tours.png"),
                              Text(
                                "25 авг, чт",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/icons/shop-tours.png"),
                                  SizedBox(width: 5,),
                                  Text(
                                    "7kg",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Без пересадок",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Image.asset("assets/images/s7.png"),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "13:45",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                ),
                              ),
                              Text(
                                "3ч 30мВ пути ",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                ),
                              ),
                              Text(
                                "17:45",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MOW",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "PET",
                                style: TextStyle(
                                    color: Color(0xFF005BFE),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "24 авг, ср",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),
                              Image.asset("assets/icons/pilot-two-tours.png"),
                              Text(
                                "25 авг, чт",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "1200\$",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TouristDataPage()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF005BFE),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Text(
                              "Начать бронирование\nс этими рейсами",
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
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
  Text buildText(String text) {
    final lines = readMore ? null : 2;
    return Text(
      text,
      maxLines: lines,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 12
      ),
    );
  }
}
