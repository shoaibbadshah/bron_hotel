import 'package:bron_hotel/pages/favorites-page.dart';
import 'package:bron_hotel/pages/home-page.dart';
import 'package:bron_hotel/pages/settings/admin-page.dart';
import 'package:bron_hotel/pages/settings/vendor-setting-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List<String> _icons =  [
    "assets/icons/search.png",
    "assets/icons/follow.png",
    "assets/icons/person.png",
  ];
  List pages = [
    HomePage(),
    FavoritesPage(),
    AdminPage()
  ];
  final List<String> _labels = [
    'Home', 'maps', 'camera'
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
    return Scaffold(
      backgroundColor: Color(0xFFF1F4FB),
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 0), // changes position of shadow
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
    );
  }
}
Widget _tabItem(String icons, String label, {bool isSelected = false}) {
  return AnimatedContainer(
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(10),
      child: Image.asset(icons, color: !isSelected ? Color(0xFF1A2B47).withOpacity(0.5) : Color(0xFF1A2B47))
  );
}

