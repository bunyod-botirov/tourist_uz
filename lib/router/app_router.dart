import 'package:flutter/material.dart';
import 'package:tourist_uz/screens/home/bottom_bar_page.dart';
import 'package:tourist_uz/info_page/info_page.dart';
import 'package:tourist_uz/screens/auth/sign_in.dart';
import 'package:tourist_uz/screens/auth/sign_up.dart';
import 'package:tourist_uz/screens/auth/splash_page.dart';
import 'package:tourist_uz/screens/profile_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case "/sign_in":
        return MaterialPageRoute(
          builder: (context) => SignInPage(),
        );
      case "/sign_up":
        return MaterialPageRoute(
          builder: (context) => SignUpPage(),
        );
      case "/info":
        return MaterialPageRoute(
          builder: (context) => const InfoPage(),
        );
      case "/bottom":
        return MaterialPageRoute(
          builder: (context) => BottomBarPage(),
        );
      case "/profile":
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
    }
  }
}
