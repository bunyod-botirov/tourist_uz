import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/gid_page/gid_home.dart';
import 'package:tourist_uz/provider/bottom_bar_provider.dart';
import 'package:tourist_uz/screens/home/home_page.dart';
import 'package:tourist_uz/screens/home/sim_card_page.dart';
import 'package:tourist_uz/screens/profile_page.dart';
import 'package:tourist_uz/screens/rek_page.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({Key? key}) : super(key: key);
  final List _pages = [
    HomePage(),
    SimCardPage(),
    GidHome(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    int item = context.watch<BottomBarProvider>().index;
    return Scaffold(
      body: _pages[item],
      bottomNavigationBar: BottomNavBar(
        showElevation: true,
        itemCornerRadius: getHeight(12),
        containerHeight: getHeight(70),
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
            activeBackgroundColor: ColorsConst.yellow,
          ),
          BottomNavBarItem(
            title: 'Sim Card',
            icon: const Icon(Icons.sim_card),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: ColorsConst.yellow,
          ),
          BottomNavBarItem(
            title: 'Gid',
            icon: const Icon(Icons.group_rounded),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: ColorsConst.yellow,
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.account_circle_sharp),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: ColorsConst.yellow,
          ),
        ],
      )
    );
  }
}
