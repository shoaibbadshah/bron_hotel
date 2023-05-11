import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _currentValue = 0;
  ScrollController _controller = ScrollController();
  List<Widget> _icons = const [
    Icon(Icons.search),
    Icon(Icons.favorite_border),
    Icon(Icons.account_circle)
  ];
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
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
                  onPressed: () {},
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
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/stays.png',
                            width: 23,
                            height: 16,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "Hotels",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF1A2B47)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //   border: Border.all(
                      //     color: Color(0xFF053154),
                      //     width: 1,
                      //   ),
                      // ),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/tours.png',
                            width: 23,
                            height: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Tours",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF005BFE)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //   border: Border.all(
                      //     color: Color(0xFF053154),
                      //     width: 1,
                      //   ),
                      // ),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/flights.png',
                            width: 23,
                            height: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Flights",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF005BFE)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'куда',
                  prefixIcon: Icon(Icons.location_on_outlined,
                      color: Color(0xFF1A2B48)),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
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
              child: _buildLocation(_controller, _currentValue),
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
                                    image:
                                        AssetImage('assets/images/paris.png'),
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
                                    image:
                                        AssetImage('assets/images/paris.png'),
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
                          (index) => _buildListTop("assets/images/ozer.png",
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
                          (index) => _buildListTop(
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration:
                  BoxDecoration(color: Color(0xFF005BFE).withOpacity(0.30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/tree.png'),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            "Get Updates & More",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Thoughful thoughts to your inbox",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Color(0xFF1A2B47),
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.center,
                          child: Text(
                            'Subscribe',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        hintText: 'Your Email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/bg.png')),
                color: Colors.white,
              ),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10),
                    Image.asset('assets/images/instagramm.png'),
                    const Text('@bilatontravel'),
                    Container(
                      height: 34,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFA5636),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TabBar(
                  onTap: (x) {
                    setState(() {
                      _selectedIndex = x;
                    });
                  },
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.blueGrey,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide.none,
                  ),
                  tabs: [
                    for (int i = 0; i < _icons.length; i++)
                      _tabItem(
                        _icons[i],
                        _labels[i],
                        isSelected: i == _selectedIndex,
                      ),
                  ],
                  controller: _tabController),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _tabItem(Widget child, String label, {bool isSelected = false}) {
  return AnimatedContainer(
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
      padding: const EdgeInsets.all(10),
      child: child);
}

final List<String> _labels = ['Home', 'maps', 'camera'];

Widget _buildListTop(String imageName, name, subTitle) {
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
Widget _buildLocation(ScrollController controller, int currentValue) {
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
                    image: AssetImage('assets/images/paris.png'),
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
