import 'package:flutter/material.dart';
import 'package:tourist_uz/provider/bottom_bar_provider.dart';
import 'package:tourist_uz/screens/home/bottom_bar_page.dart';
import 'package:tourist_uz/info_page/info_page.dart';
import 'package:tourist_uz/screens/auth/splash_page.dart';


class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case "/bottom":
        return MaterialPageRoute(
          builder: (context) =>  BottomBarPage(),
        );
    }
    switch (settings.name) {
      case "/info":
        return MaterialPageRoute(
          builder: (context) => const InfoPage(),
        );
    }
  }
}
