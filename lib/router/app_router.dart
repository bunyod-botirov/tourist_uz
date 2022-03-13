import 'package:flutter/material.dart';
import 'package:tourist_uz/gid_page/gid_home.dart';
import 'package:tourist_uz/gid_page/gid_info.dart';
import 'package:tourist_uz/info_page/info_page.dart';
import 'package:tourist_uz/screens/auth/sign_in.dart';
import 'package:tourist_uz/screens/auth/sign_up.dart';
import 'package:tourist_uz/screens/auth/splash_page.dart';
import 'package:tourist_uz/screens/home/bottom_bar_page.dart';
import 'package:tourist_uz/screens/rek_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case "/info":
        return MaterialPageRoute(builder: (context) => const InfoPage());
      case "/rek":
        return MaterialPageRoute(builder: (context) => ReklamPage());
      case "/gidhome":
        return MaterialPageRoute(builder: (context) => GidHome());
      case "/gidinfo":
        return MaterialPageRoute(builder: (context) => GidInfo());
      case "/bottom":
        return MaterialPageRoute(builder: (context) => BottomBarPage());
    }
  }
}
