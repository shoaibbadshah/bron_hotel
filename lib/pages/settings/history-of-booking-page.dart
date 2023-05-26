import 'dart:ui';

import 'package:bron_hotel/pages/settings/your-booking-page.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../widgets/follow-screen.dart';

class HistoryOfBookingPage extends StatefulWidget {
  const HistoryOfBookingPage({Key? key}) : super(key: key);

  @override
  State<HistoryOfBookingPage> createState() => _HistoryOfBookingPageState();
}

class _HistoryOfBookingPageState extends State<HistoryOfBookingPage> {
  ScrollController controllerListView = ScrollController();
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
            "История бронирования",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "У вас пока нет ни\nодной поездки",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    const Text(
                      "Пора сибирать вещи и поехать отдыхать",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF005BFE),
                            Color(0xFFFA5636),
                          ],
                          stops: [
                            0.0,
                            1.0,
                          ],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                            "Начать поиск",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Вы забронировали",
                    style: TextStyle(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const YourBookingPage()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 91,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFF005BFE))
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/bron-image.png"),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Georgia , Tbilisi",
                                  style: TextStyle(
                                      color: const Color(0xFF1A2B47).withOpacity(0.85),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Хозяин: организатор Эка",
                                  style: TextStyle(
                                      color: const Color(0xFF5E6D77).withOpacity(0.85),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                Text(
                                  "12.07.2022-27.07.2022 ",
                                  style: TextStyle(
                                      color: const Color(0xFF5E6D77).withOpacity(0.85),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Ваши поездки",
                    style: TextStyle(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 91,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFF005BFE))
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/bron-image.png"),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Georgia , Tbilisi",
                                style: TextStyle(
                                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Text(
                                "Хозяин: организатор Эка",
                                style: TextStyle(
                                    color: const Color(0xFF5E6D77).withOpacity(0.85),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              Text(
                                "12.07.2022-27.07.2022 ",
                                style: TextStyle(
                                    color: const Color(0xFF5E6D77).withOpacity(0.85),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Мы рекомендуем",
                    style: TextStyle(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10,),
                Column(
                  children: List.generate(5, (index) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 128,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/recomended-image.png",),
                                        fit: BoxFit.fill
                                    )
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(
                                      "France , Paris",
                                      style: TextStyle(
                                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                                    child: Text(
                                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
                                      style: TextStyle(
                                          color: Color(0xFF5E6D77),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            const FollowScreen(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
  Container buildFollow(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.8)),
                child: Column(
                  children: [
                    Image.asset("assets/images/instagramm.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "@bilatontravel",
                      style: TextStyle(
                          color: UtilColor.getColorFromHex("5E6D77"),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 33,
                      width: MediaQuery.of(context).size.width / 3,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: UtilColor.getColorFromHex("FA5636"),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
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
}
