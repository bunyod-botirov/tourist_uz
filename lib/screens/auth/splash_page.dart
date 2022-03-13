import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "TouristUz",
                style: TextStyle(
                  color: ColorsConst.yellow,
                  fontSize: getWidth(45),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "- if not now, when? - ",
                style: TextStyle(
                  color: ColorsConst.yellow,
                  fontSize: getWidth(15),
                ),
              ),
              Image.asset(
                "assets/images/logo.PNG",
                width: getWidth(300),
                height: getHeight(300),
                fit: BoxFit.contain,
              ),
              ElevatedButton(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: ColorsConst.white,
                    fontSize: getWidth(15),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: ColorsConst.yellow,
                    fixedSize: Size(getWidth(179), getHeight(43)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getWidth(16)),
                    )),
                onPressed: () => Navigator.pushNamed(context, "/sign_up"),
              ),
              verticalBox(17),
              ElevatedButton(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: ColorsConst.white,
                    fontSize: getWidth(15),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ColorsConst.yellow,
                  fixedSize: Size(getWidth(179), getHeight(43)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getWidth(16)),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, "/sign_in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
