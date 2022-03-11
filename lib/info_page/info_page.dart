import 'package:flutter/material.dart';
import 'package:tourist_uz/sizeof/size_config.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(493),
            width: double.infinity,
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}