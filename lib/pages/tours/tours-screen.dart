import 'package:bron_hotel/pages/tours/tours-page.dart';
import 'package:flutter/material.dart';


class ToursScreen extends StatefulWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  State<ToursScreen> createState() => _ToursScreenState();
}

class _ToursScreenState extends State<ToursScreen> {
  TextEditingController controllerChangCountry1 = TextEditingController();
  TextEditingController controllerChangCountry2 = TextEditingController();
  TextEditingController controllerChangDate1 = TextEditingController();
  TextEditingController controllerChangDate2 = TextEditingController();
  TextEditingController controllerCount = TextEditingController();

  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: controllerChangCountry1,
                        autocorrect: true,
                        decoration: const InputDecoration(
                          hintText: 'Выберите страну',
                          hintStyle: TextStyle(
                              color: Color(0xFFC4C4C4),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: controllerChangCountry2,
                        autocorrect: true,
                        decoration: const InputDecoration(
                          hintText: 'Быберите страну',
                          hintStyle: TextStyle(
                              color: Color(0xFFC4C4C4),
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
                      decoration: const BoxDecoration(
                        color: Color(0xFF8B98A0),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/arrowUp.png"),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controllerChangDate1,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        hintText: 'Быберите число',
                        hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: controllerChangDate2,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        hintText: 'Выберите число',
                        hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controllerCount,
                autocorrect: true,
                decoration: const InputDecoration(
                  hintText: 'Количество гостей',
                  hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
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
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ToursPage()));
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
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height / 13.6,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                     Text(
                      '3 ночи',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: const [
                     Text(
                      '7 ночей',
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: const [
                     Text(
                      '11 ночей',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: const [
                     Text(
                      '14 ночей',
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20,),
        buildTapeTours(context),
        const SizedBox(height: 30,),
        buildCalendarTours(context),
        const SizedBox(height: 30,),
        buildSearchTours(context),
        const SizedBox(height: 30,),
        buildTheBestTours(context),
        const SizedBox(height: 30,),
        buildFAQ(),
        const SizedBox(height: 20,)
      ],
    );
  }

  Column buildTapeTours(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Лента горящич туров',
              style: TextStyle(
                  color: const Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.4,
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.7, initialPage: 2),
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                      ),
                    child: Column(
                      children: [
                        Container(
                          height: 201,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tours-images.png"),
                              fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Maldives island',
                                    style: TextStyle(
                                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: const [
                                       Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 12, fontWeight: FontWeight.w700),),
                                       Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UNIQUE MALDIVES',
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: const Color(0xFFD9D9D9),
                                  )

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'February , 8 days /7 nights',
                                style: TextStyle(
                                    color: Color(0xFFFA5636),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Price: 1.560 USD*',
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),


                            ],
                          ),
                        ),
                        const SizedBox(height: 10,)
                      ],
                    ),
                  );
                }),

          ),

        ],
      );
  }

  Column buildCalendarTours(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Календарь низких цен',
              style: TextStyle(
                  color: const Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.4,
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.7, initialPage: 2),
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                      ),
                    child: Column(
                      children: [
                        Container(
                          height: 201,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tours-images.png"),
                              fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Maldives island',
                                    style: TextStyle(
                                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: const [
                                       Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 12, fontWeight: FontWeight.w700),),
                                       Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UNIQUE MALDIVES',
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: const Color(0xFFD9D9D9),
                                  )

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'February , 8 days /7 nights',
                                style: TextStyle(
                                    color: Color(0xFFFA5636),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Price: 1.560 USD*',
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),

          ),

        ],
      );
  }

  Column buildSearchTours(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Найти выгодный тур',
              style: TextStyle(
                  color: const Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.4,
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.7, initialPage: 2),
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                      ),
                    child: Column(
                      children: [
                        Container(
                          height: 201,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tours-images.png"),
                              fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Maldives island',
                                    style: TextStyle(
                                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: const [
                                       Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 12, fontWeight: FontWeight.w700),),
                                       Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UNIQUE MALDIVES',
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: const Color(0xFFD9D9D9),
                                  )

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'February , 8 days /7 nights',
                                style: TextStyle(
                                    color: Color(0xFFFA5636),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Price: 1.560 USD*',
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),

          ),

        ],
      );
  }

  Column buildTheBestTours(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Мы предлогаем лучшее',
              style: TextStyle(
                  color: const Color(0xFF1A2B47).withOpacity(0.85),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.4,
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.9, initialPage: 2),
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                      ),
                    child: Column(
                      children: [
                        Container(
                          height: 201,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tours-images.png"),
                              fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Maldives island',
                                    style: TextStyle(
                                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: const [
                                       Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 12, fontWeight: FontWeight.w700),),
                                       Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UNIQUE MALDIVES',
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: const Color(0xFFD9D9D9),
                                  )

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'February , 8 days /7 nights',
                                style: TextStyle(
                                    color: Color(0xFFFA5636),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Price: 1.560 USD*',
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),

          ),

        ],
      );
  }

  Column buildFAQ() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Часто задаваемые вопросы",
            style: TextStyle(
                color: const Color(0xFF1A2B47).withOpacity(0.85),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Мне не пришёл билет. Что делать?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF005BFE),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Я хочу вернуть билет. Как мне это сделать?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF005BFE),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Допущена ошибка в данных при бронировании.Как исправить?",
                style: TextStyle(
                    color: Color(0xFF005BFE),
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Как добавить багаж?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF005BFE),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 38,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
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
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
