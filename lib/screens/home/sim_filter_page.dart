import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/size_config.dart';

class SimFilterPage extends StatelessWidget {
  final int? kod;
  final int? num1;
  final int? num2;
  final int? num3;
  const SimFilterPage(
      {Key? key,
      required this.kod,
      required this.num1,
      required this.num2,
      required this.num3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sim card ordering"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(getHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Number: +998 ($kod) $num1-$num2-$num3",
                style: TextStyle(
                  fontSize: getHeight(22),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: getHeight(30)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Name",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(height: getHeight(20)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Family name",
                    hintText: "Family name",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(height: getHeight(20)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Patronymic",
                    hintText: "Patronymic",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(height: getHeight(20)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Passport series letter",
                    hintText: "Passport series letter",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(height: getHeight(20)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Passport serial number",
                    hintText: "Passport serial number",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(height: getHeight(20)),
              SizedBox(
                height: getHeight(60),
                width: getWidth(365),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Where are you from",
                    hintText: "Where are you from",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(150),
              ),
              InkWell(
                child: Container(
                  height: getHeight(60),
                  width: getWidth(365),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: ColorsConst.yellow,
                  ),
                  child: Center(
                    child: Text(
                      "Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getHeight(25),
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  showDialog(
                    context: context, 
                    builder: (context){
                      return AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: Stack(
                          children: [
                            Container(
                              alignment: Alignment(0.2,0.3),
                              height: getHeight(150),
                              width: getWidth(300),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: Text("Your order has been confirmed !",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getHeight(20),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: getHeight(90),
                              left: getWidth(95),
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: getHeight(50),
                                backgroundImage: CachedNetworkImageProvider("https://c.tenor.com/hwj2-G3DNp0AAAAC/sucess-discord.gif"),
                              ) 
                            ),
                          ],
                          clipBehavior: Clip.none,
                        ),
                      );
                    }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
