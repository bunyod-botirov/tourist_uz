import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/db.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/provider/dropdow_provider.dart';
import 'package:tourist_uz/provider/listview_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var item = context.watch<ListProvider>().item;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getHeight(40)),
          Row(
            children: [
              SizedBox(width: getWidth(10)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: getHeight(40),
                ),
              ),
              const Spacer(),
              Text(
                "Hello, Lola",
                style: TextStyle(fontSize: getHeight(18)),
              ),
              SizedBox(width: getWidth(10)),
              Container(
                height: getHeight(50),
                width: getWidth(50),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          "https://img.dtnext.in/Articles/2022/Jan/202201071317092566_Shweta-Tripathi-I-am-a-bit-of-a-fiery-person-myself_SECVPF.gif")),
                ),
              ),
              SizedBox(width: getWidth(20)),
            ],
          ),
          SizedBox(height: getHeight(20)),
          Row(
            children: [
              SizedBox(width: getWidth(20)),
              SizedBox(
                height: getHeight(50),
                width: getWidth(250),
                child: DropdownButton(
                  style: TextStyle(
                    fontSize: getHeight(22),
                    color: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  isExpanded: true,
                  value: context.watch<DropdownProvider>().city,
                  items: List.generate(
                    12,
                    (index) => DropdownMenuItem(
                      child: Text(
                        citys[index],
                      ),
                      value: citys[index],
                    ),
                  ),
                  onChanged: (v) {},
                ),
              ),
              const Spacer(),
              IconButton(
                icon: Icon(
                  Icons.tune,
                  size: getHeight(35),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/filter');
                },
              ),
              SizedBox(width: getWidth(20)),
            ],
          ),
          SizedBox(height: getHeight(20)),
          Row(
            children: [
              SizedBox(width: getWidth(20)),
              Text(
                "Category",
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
            height: getHeight(160),
            width: getHeight(414),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: getWidth(20),
                        top: item == index ? getHeight(0) : getHeight(10),
                        bottom: item == index ? getHeight(0) : getHeight(10)),
                    height: item == index ? getHeight(180) : getHeight(160),
                    width: item == index ? getWidth(150) : getWidth(130),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                          color: index == item ? Colors.orange : Colors.grey),
                      color: index == item
                          ? Colors.orange.shade100
                          : Colors.grey.shade100,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: getHeight(10)),
                        SizedBox(
                          height: getHeight(80),
                          width: getHeight(80),
                          child: Image.asset(
                            category["img"][index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: getHeight(10)),
                        Text(
                          category["name"][index],
                          style: TextStyle(
                            fontSize: getHeight(22),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
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
              SizedBox(width: getWidth(20)),
              Text(
                "The Best",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getHeight(25),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(380),
            width: getWidth(414),
            child: CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, ind) {
                return Container(
                  height: getHeight(300),
                  width: getHeight(300),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.grey),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://source.unsplash.com/random/$item"),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getHeight(8), horizontal: getWidth(10)),
                        child: Text(
                          "Hotel name ",
                          style: TextStyle(
                            color: ColorsConst.yellow,
                            fontSize: getHeight(19),
                          ),
                        ),
                      ),
                      Container(
                        height: getHeight(40),
                        width: getWidth(110),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(15)),
                          color: ColorsConst.grey.withOpacity(0.6),
                        ),
                        child: Center(
                          child: Text(
                            "300\$",
                            style: TextStyle(
                              fontSize: getHeight(18),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
