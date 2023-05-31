import 'package:bron_hotel/pages/favorites-page.dart';
import 'package:bron_hotel/pages/settings/admin-page.dart';
import 'package:flutter/material.dart';

import 'pages/home-page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  static const _icons = [
    'assets/icons/search.png',
    'assets/icons/follow.png',
    'assets/icons/person.png',
  ];

  static const _labels = ['Home', 'Favorites', 'Personal'];

  final _pages = [
    const HomePage(),
    const FavoritesPage(),
    const AdminPage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _icons.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4FB),
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Builds the bottom navigation bar.
  Widget _buildBottomNavigationBar() {
    return Container(
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
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: TabBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelColor: Colors.white,
            unselectedLabelColor: Colors.blueGrey,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide.none,
            ),
            tabs: List.generate(_icons.length, (index) {
              return _TabItem(
                icon: _icons[index],
                label: _labels[index],
                isSelected: index == _selectedIndex,
              );
            }),
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}


class _TabItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;

  const _TabItem({
    Key? key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(8),
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(10),
      child: Image.asset(
        icon,
        color: isSelected
            ? const Color(0xFF1A2B47)
            : const Color(0xFF1A2B47).withOpacity(0.5),
      ),
    );
  }
}

