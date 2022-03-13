import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/size_config.dart';

class GidInfo extends StatelessWidget {
  final String? name;
  final String? price;
  final String? img;
  final List? til;
  const GidInfo({Key? key, required this.name, required this.price, required this.til, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: getHeight(440),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        img!,
                      ),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 40.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: getHeight(407),
            left: 0,
            child: Container(
              height: getHeight(609),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),

                  ),
                  color: Colors.grey.shade200),
              child: Padding(
                padding:  EdgeInsets.only(left: getHeight(20.0), top: getHeight(30.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: getHeight(210),
                        width: getWidth(250),
                        // color: Colors.cyan,
                        child: Padding(
                          padding:  EdgeInsets.only(left: getHeight(12.0), top: getHeight(6.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: getHeight(15)),
                              Text(
                                name!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: getHeight(18)),
                              ),
                              SizedBox(height: getHeight(15)),
                              Text(
                                price!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: getHeight(18)),
                              ),
                              SizedBox(height: getHeight(15)),
                              Text(
                                "Nechta Till Bilishi : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: getHeight(18)),
                              ),
                              SizedBox(height: getHeight(15)),
                              Text(
                                "  1. ${til![0]} ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: getHeight(18),
                                    color: Colors.grey),
                              ),
                              SizedBox(height: getHeight(15)),
                              Text(
                                "  2. ${til![1]} ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: getHeight(18),
                                    color: Colors.grey),
                              ),
                              SizedBox(height: getHeight(15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(50),),
                    Container(
                      height: getHeight(60),
                      width: double.infinity,
                      //color: Colors.cyan,
                      child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: getWidth(20)),
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(70),
                              decoration: BoxDecoration(
                                  color: Colors.brown.shade200,
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Icon(Icons.sms),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(70),
                              decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  
                                  image: CachedNetworkImageProvider(
                                      "https://pnggrid.com/wp-content/uploads/2021/07/Facebook-Logo-Square-768x768.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(70),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://img2.freepng.ru/20180327/opw/kisspng-iphone-telegram-computer-icons-android-clip-art-telegram-5aba0cb88a16c9.3045067115221423925656.jpg"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: getHeight(50),
                              width: getWidth(70),

                              decoration: BoxDecoration(
                                  //color: Colors.orangeAccent,
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQPUqreVAW5MNDMx1vGbSGIzEC5yBtB4e3kqjhJq2lmXLv6eYt0I08k3sEEnYLqrPeGtk&usqp=CAU"),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(8.0)),
                              //child: Icon(Icons.sms),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: getHeight(20.0), top: getHeight(4.0)),
                      child: Container(
                        height: getHeight(50),
                        width: getWidth(320),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              elevation: 6.0,
                              minimumSize: Size(200, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Icon(Icons.phone), Text("Phone")],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
