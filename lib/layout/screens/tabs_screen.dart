// ignore_for_file: unnecessary_cast, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anamil/layout/screens/favorite.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/screens/profile.dart';
import 'package:anamil/layout/widgets/safeAreaWidget.dart';
import 'package:flutter/material.dart';

int _selectedIndex = 0;
Widget bodyApp = HomePage();

class TabsScreens extends StatefulWidget {
  const TabsScreens({super.key});

  @override
  State<TabsScreens> createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeAreaWidth(
      child: Scaffold(
        body: bodyApp,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 32),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 32),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 32),
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
      ),
    );
  }
}
