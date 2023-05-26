import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class YourBookingPage extends StatefulWidget {
  const YourBookingPage({Key? key}) : super(key: key);

  @override
  State<YourBookingPage> createState() => _YourBookingPageState();
}

class _YourBookingPageState extends State<YourBookingPage> {
  ScrollController controllerListView = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF1A2B47),
        centerTitle: true,
        title: const Text(
          "Ваше бронирование",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/yourbron.png"),
                                fit: BoxFit.fill
                              )
                          ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        buttonCarouselController.previousPage();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: const Center(child: Icon(Icons.arrow_back_ios,   color: Color(0xFF5E6D77),)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        buttonCarouselController.nextPage();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: const Center(child: Icon(Icons.arrow_forward_ios,  color: Color(0xFF5E6D77))),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text(
                          "Заезд",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                         SizedBox(height: 5,),
                         Text(
                          "пт, 12 июля 2022",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                         SizedBox(height: 5,),
                         Text(
                          "12:00",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(color: Color(0xFFD9D9D9),),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text(
                          "Заезд",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                         SizedBox(height: 5,),
                         Text(
                          "пт, 12 июля 2022",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                         SizedBox(height: 5,),
                         Text(
                          "12:00",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset("assets/icons/messages.png"),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    "Написать хозяину",
                    style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Детали бронирования",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset("assets/icons/users-icons.png"),
                              const SizedBox(width: 10,),
                              Text(
                                "Число гостей",
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "4 взрослых , 2 детей",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Код подтверждения",
                            style: TextStyle(
                                color: const Color(0xFF1A2B47).withOpacity(0.85),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                        Text(
                          "HG67KI8990L",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Правила отмены",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Text(
                      "48 часов",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                     SizedBox(height: 5,),
                     Text(
                      "после бронирования",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                     SizedBox(height: 10,),
                     Text(
                      "Полный возврат: вам вернут\n100% уплаченной суммы.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Text(
                      "19 июля",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                     SizedBox(height: 5,),
                     Text(
                      "12:00",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                     SizedBox(height: 10,),
                     Text(
                      "Частичный возврат: 50%\nстоимости каждой ночи.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                     SizedBox(height: 15,),
                     Text(
                      "Сервисный сбор возвращается полностью.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Text(
                      "27 июля",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                     SizedBox(height: 5,),
                     Text(
                      "14:00 (выезд)",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                     SizedBox(height: 10,),
                     Text(
                      "Без возврата",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Адрес",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 20,),
                Text(
                  "tbilisi, Z. Bedneliani str, saburtalo Bendeliani st N2, Тбилиси, Тбилиси 0171, Грузия",
                  style: TextStyle(
                      color: const Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/maps-image.png"),
                      fit: BoxFit.fill
                    )
                  ),
                )
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
                  "О хозяине",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: 260,
                  child: Text(
                    "Я не могу сказать много о себе, просто скажите вам, что я хороший друг, я добрый и люблю животных",
                    style: TextStyle(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
                const SizedBox(height: 10,),
                TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Подробно",
                      style: TextStyle(
                          color: Color(0xFF005BFE),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Свидения об оплате",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const SizedBox(height: 15,),
                Text(
                  "Итого: 200\$",
                  style: TextStyle(
                      color: const Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
