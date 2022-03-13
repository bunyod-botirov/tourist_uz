import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/constants/db.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/provider/listview_provider.dart';
import 'package:tourist_uz/provider/sim_provider.dart';

class SimCardPage extends StatelessWidget {
  const SimCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var item = context.watch<SimProvider>().simIndex;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: getWidth(20), top: getHeight(40)),
        child: Column(children: [
          SizedBox(width: getWidth(414)),
          Text(
            "Order sim card",
            style: TextStyle(
              color: Colors.black,
              fontSize: getHeight(25),
            ),
          ),
          SizedBox(height: getHeight(20)),
          Row(
            children: [
              Text(
                "Sim Card",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getHeight(25),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: getHeight(20)),
          Row(
            children: [
              SizedBox(width: getWidth(50)),
              InkWell(
                child: const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    "https://play-lh.googleusercontent.com/ewXnd-DcleoJZdtxhMuiaZlFFncRMtnFrVK7b3r7-7sPP8Vw8GoaDki9oe2Vzsa4M-M",
                  ),
                ),
                onTap: (){
                  context.read<SimProvider>().addSim(0);
                },
              ),
              Text(
                "Beeline",
                style: TextStyle(
                  fontSize: getHeight(20),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              InkWell(
                child: Container(
                  height: getHeight(50),
                  width: getWidth(90),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          "https://play-lh.googleusercontent.com/diqErsrpGp2Yp4zknZI71-s5iF6nnmeHO5Lh6GG2FSnBeP-K5rlJhl_SKTSHOfnythY"),
                    ),
                  ),
                ),
                onTap: (){
                  context.read<SimProvider>().addSim(1);
                },
              ),
              SizedBox(width: getWidth(50)),
            ],
          ),
          SizedBox(height: getHeight(20)),
          SizedBox(
            height: getHeight(250),
            width: getHeight(414),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              itemBuilder: (context, index) {
                int kod = item == 1 ? 88 : Random().nextInt(2) + 90;
                int number1 = Random().nextInt(899) + 100;
                int number2 = Random().nextInt(89) + 10;
                int number3 = Random().nextInt(89) + 10;
                return InkWell(
                  child: Container(
                    height: getHeight(160),
                    width: getWidth(350),
                    alignment: const Alignment(0, 0.4),
                    margin: EdgeInsets.all(getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: item == 0
                              ? const AssetImage("assets/images/beeline.jpg")
                              : const AssetImage("assets/images/mobiuz.png")
                          // AssetImage("assets/images/mobiuz.png")
                          ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        item == 1 ?Row(
                          children: [
                            SizedBox(width: getWidth(200)),
                            Container(
                              height: getHeight(70),
                              width: getWidth(120),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      "https://play-lh.googleusercontent.com/diqErsrpGp2Yp4zknZI71-s5iF6nnmeHO5Lh6GG2FSnBeP-K5rlJhl_SKTSHOfnythY"),
                                ),
                              ),
                            ),
                          ],
                        ) : const Text(''),
                        SizedBox(
                          height: getHeight(30)
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "+998 ($kod) $number1-$number2-$number3",
                              style: TextStyle(fontSize: getHeight(22)),
                            ),
                            SizedBox(
                              width: getHeight(30),
                            ),
                            Text(
                              "Bepul",
                              style: TextStyle(fontSize: getHeight(18)),
                            ),
                          ],
                        ),
                        SizedBox(height: getHeight(30))
                      ],
                    ),
                    
                  ),
                  onTap: () {
                    context.read<ListProvider>().addIndex(index);
                  },
                );
              },
            ),
          ),
          SizedBox(height: getHeight(20)),
          Row(
            children: [
              Text(
                "Madem rent",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getHeight(25),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: getHeight(20)),
          SizedBox(
            height: getHeight(250),
            width: getHeight(414),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(  
                    height:  getHeight(300),
                    width:getWidth(350),
                    margin: EdgeInsets.all(getHeight(8)),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: CachedNetworkImageProvider(madem[index]),
                      ),
                    ),
                    
                    ),
                  onTap: () {
                   
                  },
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
