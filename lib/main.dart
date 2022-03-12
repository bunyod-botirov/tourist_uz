import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/provider/bottom_bar_provider.dart';
import 'package:tourist_uz/provider/dropdow_provider.dart';
import 'package:tourist_uz/provider/listview_provider.dart';
import 'package:tourist_uz/router/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomBarProvider(),),
        ChangeNotifierProvider(create: (context) => DropdownProvider(),),
        ChangeNotifierProvider(create: (context) => ListProvider(),)
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
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/bottom",
    );
  }
}
