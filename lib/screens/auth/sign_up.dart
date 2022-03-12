import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/provider/sign_provider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  fontWeight: FontWeight.w400,
                ),
              ),
              verticalBox(60),
              SizedBox(
                width: getWidth(286),
                height: getHeight(43),
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    labelText: "Your Name",
                    labelStyle: TextStyle(
                      color: ColorsConst.grey,
                      fontSize: getWidth(15),
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              verticalBox(16),
              SizedBox(
                width: getWidth(286),
                height: getHeight(43),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: ColorsConst.grey,
                      fontSize: getWidth(15),
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              verticalBox(16),
              SizedBox(
                width: getWidth(286),
                height: getHeight(43),
                child: TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: ColorsConst.grey,
                      fontSize: getWidth(15),
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getWidth(21)),
                      borderSide: BorderSide(
                        color: ColorsConst.yellow,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              verticalBox(18),
              ElevatedButton(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: ColorsConst.white,
                    fontSize: getWidth(15),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ColorsConst.yellow,
                  fixedSize: Size(getWidth(179), getHeight(43)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getWidth(16)),
                  ),
                ),
                onPressed: () async {
                  await SignProvider()
                      .signUp(context, _email.text, _password.text);
                  Navigator.pushNamed(context, "/bottom_navbar");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
