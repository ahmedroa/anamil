// ignore_for_file: unnecessary_cast, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anamil/layout/screens/favorite.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/screens/productsScreen.dart';
import 'package:anamil/layout/screens/profile.dart';
import 'package:flutter/material.dart';

class TapsScreens extends StatefulWidget {
  const TapsScreens({super.key});

  @override
  State<TapsScreens> createState() => _TapsScreensState();
}

class _TapsScreensState extends State<TapsScreens> {
  int _selectedIndex = 0;
  late Widget bodyApp = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyApp,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 32),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 32),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 32),
            label: 'Open Dialog',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff1C35A0),
        unselectedItemColor: Color(0xffe1e1e1),
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              bodyApp = HomePage();
              break;
            case 1:
              bodyApp = Favorite();
              break;
            case 2:
              bodyApp = Profile();
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
}
