import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/provider/bottom_bar_provider.dart';
import 'package:tourist_uz/screens/home/home_page.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({Key? key}) : super(key: key);
  final List _pages = [
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[context.watch<BottomBarProvider>().index],
      bottomNavigationBar: BottomNavBar(
        showElevation: true,
        itemCornerRadius: 10,
        containerHeight: 70,
        containerPadding: EdgeInsets.all(5),
        selectedIndex: context.watch<BottomBarProvider>().index,
        onItemSelected: (index) {
          context.read<BottomBarProvider>().addIndex(index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Home',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.orange.shade300,
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.person),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.orange.shade300,
          ),
          BottomNavBarItem(
            title: 'Message',
            icon: const Icon(Icons.chat_bubble),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.orange.shade300,
          ),
          BottomNavBarItem(
            title: 'Settings',
            icon: const Icon(Icons.settings),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.orange.shade300,
          ),
        ],
      ),
    );
  }
}
