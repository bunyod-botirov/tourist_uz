import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tourist_uz/gid_page/gid_home.dart';
import 'package:tourist_uz/gid_page/gid_info.dart';
=======
import 'package:tourist_uz/screens/home/bottom_bar_page.dart';
>>>>>>> b9df631ae43b75a2ddee059beef89584c7bddca4
import 'package:tourist_uz/info_page/info_page.dart';
import 'package:tourist_uz/screens/auth/sign_in.dart';
import 'package:tourist_uz/screens/auth/sign_up.dart';
import 'package:tourist_uz/screens/auth/splash_page.dart';
<<<<<<< HEAD
import 'package:tourist_uz/screens/rek_page.dart';
=======
import 'package:tourist_uz/screens/home/fiter_page.dart';
>>>>>>> b9df631ae43b75a2ddee059beef89584c7bddca4

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
<<<<<<< HEAD

=======
      case "/bottom":
        return MaterialPageRoute(
          builder: (context) => BottomBarPage(),
        );
>>>>>>> b9df631ae43b75a2ddee059beef89584c7bddca4
      case "/info":
        return MaterialPageRoute(
          builder: (context) => const InfoPage(),
        );
<<<<<<< HEAD

      case "/rek":
        return MaterialPageRoute(
          builder: (context) => ReklamPage(),
        );
      case "/gidhome":
        return MaterialPageRoute(
          builder: (context) => GidHome(),
        );
        case "/gidinfo":
        return MaterialPageRoute(
          builder: (context) => GidInfo(),
=======
      case "/filter":
        return MaterialPageRoute(
          builder: (context) => const FilterPage(),
        ); 
      case "/sign_in":
        return MaterialPageRoute(
          builder: (context) => SignInPage(),
        );
      case "/sign_up":
        return MaterialPageRoute(
          builder: (context) => SignUpPage(),
>>>>>>> b9df631ae43b75a2ddee059beef89584c7bddca4
        );
    }
  }
}
