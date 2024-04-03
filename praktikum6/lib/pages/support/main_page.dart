

import 'package:flutter/material.dart';
import 'package:praktikum6/pages/home/home_page.dart';
import 'package:praktikum6/pages/portofolio/portofolio.page.dart';
import 'package:praktikum6/pages/profile/profile.dart';
import 'package:praktikum6/pages/styles/text_styles.dart';
import 'package:praktikum6/pages/support/support_page.dart';
import 'package:praktikum6/styles/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    HomePage(),
    PortfolioPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: kGrey,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kBlueRibbon,
          unselectedItemColor: kDarkGray,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                  color: _selectedIndex == 0 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/portofolio.png',
                  width: 24,
                  color: _selectedIndex == 1 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Portfolio'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/Support.png',
                  width: 24,
                  color: _selectedIndex == 2 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Support'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/Profile.png',
                  width: 24,
                  color: _selectedIndex == 3 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}