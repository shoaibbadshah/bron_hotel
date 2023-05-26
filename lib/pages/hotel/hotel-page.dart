import 'dart:ui';

import 'package:bron_hotel/pages/hotel/dialog-hotels.dart';
import 'package:bron_hotel/pages/hotel/housing-options.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  int currentValue = 0;
  final ScrollController _controller = ScrollController();

  TextEditingController controllerLocation =TextEditingController();
  TextEditingController controllerZ = TextEditingController();
  TextEditingController controllerP =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            autocorrect: true,
            controller: controllerLocation,
            decoration: const InputDecoration(
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
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child:  TextField(
                  controller: controllerZ,
                  autocorrect: true,
                  decoration: const InputDecoration(
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
              const SizedBox(width: 10),
              Expanded(
                child:  TextField(
                  controller: controllerP,
                  autocorrect: true,
                  decoration: const InputDecoration(
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
        const SizedBox(height: 20),
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
                const VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: const [
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
                const VerticalDivider(
                  thickness: 2,
                ),
                Row(
                  children: const [
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: const Color(0xFF005BFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HousingOptions()));
                });
              },
              child: const Text(
                "Поиск",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              )),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Tropical",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFF1A2B47)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 2,
                        width: 50,
                        color: const Color(0xFF1A2B47),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _buildLocationMain(_controller, currentValue),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                    color: const Color(0xFF1A2B47).withOpacity(0.01),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: const Color(0xFF5F90F3).withOpacity(0.05),
                          offset: const Offset(0, 0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Let\'s choose randomly',
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
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
                            child: const Center(
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
                            child: const Center(
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
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        children: const [
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
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(196, 50),
                              backgroundColor: const Color(0xFF1A2B47),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            setState(() {
                              showDialog(
                                  barrierColor: Colors.grey.withOpacity(0.5),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const DialogHotels();
                                  });
                            });
                          },
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Top destinations\nfor beach lovers",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Top Hotels",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Here you can find the best hotels",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: const BoxDecoration(color: Color(0xFF1A2B47)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    letterSpacing: 2,
                    height: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              const SizedBox(
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

  Widget _buildListTopMain(String imageName, name, subTitle) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageName),
          const SizedBox(
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
                    style: const TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
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
            Container(
              width: MediaQuery.of(context).size.width / 2.3,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/newParis.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Paris',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Rancho"),
                  ),
                  const SizedBox(height: 40,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: const [
                             Expanded(
                              child: Text(
                                "• 7 spaces ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                             Expanded(
                              child: Text(
                                "• 7 Hotels ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                             Expanded(
                              child: Text(
                                "• 7 Tourss ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10)
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
          children: const  [
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
        const SizedBox(
          height: 20,
        ),
        Center(
          child: DotsIndicator(
            dotsCount: 4,
            position: currentValue,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(30.0, 9.0),
              color: const Color(0xFFDDDDDD),
              activeColor: const Color(0xFF1A2B47),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
            color: const Color(0xFF005BFE).withOpacity(0.1),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/tree.png"),
                  const SizedBox(
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
                      const SizedBox(
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
              const SizedBox(
                height: 40,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color:
                        UtilColor.getColorFromHex("1A2B47").withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
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
                  contentPadding: const EdgeInsets.only(left: 20),
                  hintStyle: const TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
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
}
