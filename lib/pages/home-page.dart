import 'package:bron_hotel/pages/auth/login-and-register-page.dart';
import 'package:bron_hotel/pages/flights/flight-screen.dart';
import 'package:bron_hotel/pages/hotel/hotel-page.dart';
import 'package:bron_hotel/pages/notifications-page.dart';
import 'package:bron_hotel/pages/tours/tours-screen.dart';
import 'package:bron_hotel/widgets/follow-screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndexTabBar;


  static const List<TabInfo> _tabInfoList = [
    TabInfo("Hotel", 'assets/images/stays.png', HotelPage()),
    TabInfo("Tours", 'assets/images/tours.png', ToursScreen()),
    TabInfo("Flights", 'assets/images/flights.png', FlightScreen()),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndexTabBar = 0;
  }

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
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: const Color(0xFFF1F4FB),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsPage()));
                      });
                    },
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Color(0xFF1A2B47),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFA5636),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginAndRegisterPage()));
                      });
                    },
                    child: const Text(
                      "Войти",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            _buildTabBar(),
            _buildCurrentTabScreen(),
            const FollowScreen(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _tabInfoList.map(
              (tabInfo) {
                final index = _tabInfoList.indexOf(tabInfo);
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndexTabBar = index;
                      });
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              tabInfo.image,
                              height: 16,
                              color: _currentIndexTabBar == index
                                  ? const Color(0xFF1A2B47)
                                  : const Color(0xFF005BFE),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              tabInfo.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: _currentIndexTabBar == index
                                    ? const Color(0xFF11A2B47)
                                    : const Color(0xFF005BFE),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        _currentIndexTabBar == index
                            ? Container(
                                width: double.infinity,
                                height: 2,
                                color: Color(0xFF1A2B47),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentTabScreen() {
    final currentTabInfo = _tabInfoList[_currentIndexTabBar];
    return currentTabInfo.screen;
  }
}

class TabInfo {
  final String name;
  final String image;
  final Widget screen;

  const TabInfo(this.name, this.image, this.screen);
}
