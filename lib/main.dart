import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist Uz',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFFF9900,
          {
            50: Color.fromRGBO(255, 255, 153, .1),
            100: Color.fromRGBO(255, 255, 153, .2),
            200: Color.fromRGBO(255, 255, 153, .3),
            300: Color.fromRGBO(255, 255, 153, .4),
            400: Color.fromRGBO(255, 255, 153, .5),
            500: Color.fromRGBO(255, 255, 153, .6),
            600: Color.fromRGBO(255, 255, 153, .7),
            700: Color.fromRGBO(255, 255, 153, .8),
            800: Color.fromRGBO(255, 255, 153, .9),
            900: Color.fromRGBO(255, 255, 153, 1),
          },
        ),
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/profile",
    );
  }
}
