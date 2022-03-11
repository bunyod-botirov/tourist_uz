import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/sizeof/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          verticalBox(140),
          Text(
            "TouristUz",
            style: TextStyle(
              color: ColorsConst.yellow,
              fontSize: 45,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "- if not now, when? - ",
            style: TextStyle(
              color: ColorsConst.yellow,
              fontSize: 15,
            ),
          ),
          Image.asset(
            "assets/images/logo.PNG",
            width: getWidth(300),
            height: getHeight(300),
            fit: BoxFit.contain,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
