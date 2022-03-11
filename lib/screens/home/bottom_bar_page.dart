import 'package:flutter/material.dart';
import 'package:tourist_uz/screens/home/home_page.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({ Key? key }) : super(key: key);
  final List _pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
        ],
      ),
    );
  }
}