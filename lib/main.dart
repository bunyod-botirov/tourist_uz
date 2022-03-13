import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/provider/bottom_bar_provider.dart';
import 'package:tourist_uz/provider/dropdow_provider.dart';
import 'package:tourist_uz/provider/listview_provider.dart';
import 'package:tourist_uz/provider/slider_provider.dart';
import 'package:tourist_uz/router/app_router.dart';

 
  


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomBarProvider(),),
        ChangeNotifierProvider(create: (context) => DropdownProvider(),),
        ChangeNotifierProvider(create: (context) => ListProvider(),),
        ChangeNotifierProvider(create: (context) => SliverProvider(),)
      ],
      child: MyApp(),
    ),
  );
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
      initialRoute: "/bottom",
    );
  }
}
