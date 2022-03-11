import 'package:flutter/material.dart';
import 'package:tourist_uz/info_page/info_page.dart';
import 'package:tourist_uz/screens/splash_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
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
