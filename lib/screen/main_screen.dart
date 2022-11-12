import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:language_app/screen/characters_screen.dart';
import 'package:language_app/screen/folklore_screen.dart';
import 'package:language_app/screen/home_screen.dart';
import 'package:language_app/screen/profile_screen.dart';
import 'package:language_app/screen/translation_screen.dart';
import 'package:line_icons/line_icons.dart';

import '../constant/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List pages = [
    HomeScreen(),
    CharactersScreen(),
    FolkloreScreen(),
    ProfileScreen(),
    TranslationScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  void _tabChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 800),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0, vertical: 14),
            child: GNav(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              duration: Duration(milliseconds: 800),
              gap: 2.0,
              tabs: [
                GButton(
                  // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  iconActiveColor: kFontTest,
                  iconColor: Colors.black,
                  textColor: kFontTest,
                  backgroundColor: kFontTest.withOpacity(.2),
                  iconSize: 24,
                  icon: LineIcons.home,
                  text: 'Beranda',
                  textStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    color: kFontTest
                  ),
                ),
                GButton(
                  iconActiveColor: kCategoryBackground4,
                  iconColor: Colors.black,
                  textColor: kCategoryBackground4,
                  backgroundColor: kCategoryBackground4.withOpacity(.2),
                  iconSize: 24,
                  icon: LineIcons.sortAlphabeticalDown,
                  text: 'Aksara',
                  textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: kCategoryBackground4,
                      fontWeight: FontWeight.bold
                  ),
                ),
                GButton(
                  iconActiveColor: kCategoryBackground1,
                  iconColor: Colors.black,
                  textColor: kCategoryBackground1,
                  backgroundColor: kCategoryBackground1.withOpacity(.2),
                  iconSize: 24,
                  icon: LineIcons.book,
                  text: 'Cerita Rakyat',
                ),
                GButton(
                  iconActiveColor: Colors.amber[600]!,
                  iconColor: Colors.black,
                  textColor: Colors.amber[600]!,
                  backgroundColor: Colors.amber[600]!.withOpacity(.2),
                  iconSize: 24,
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: _tabChanged,
            ),
          ),
        ),
      ),
    );
  }
}
