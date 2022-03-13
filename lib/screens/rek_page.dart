import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_tv/flutter_swiper.dart';
import 'package:tourist_uz/constants/size_config.dart';

class ReklamPage extends StatelessWidget {
  ReklamPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: getHeight(230),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                    child: SizedBox(
                      height: getHeight(40),
                      width: getWidth(350),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: "search",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: getWidth(65),
            top: getHeight(120),
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: getHeight(150),
                width: getWidth(250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  //color: Colors.cyan,
                ),
                child: SizedBox(
                  height: getHeight(140),
                  width: getWidth(240),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: getHeight(120),
                        width: getWidth(220),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index")),
                        ),
                      );
                    },
                    itemCount: 5,
                    itemWidth: 300.0,
                    layout: SwiperLayout.STACK,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: getHeight(650),
            width: getWidth(355),
            child: Padding(
              padding: const EdgeInsets.only(top: 338.0, left: 20.0),
              child: Builder(
                builder: (context) {
                  return Container(
                    margin: EdgeInsets.only(top: 50.0),
                    height: getHeight(100),
                    width: getWidth(350),
                    //color: Colors.yellowAccent,
                    child: ListView.builder(
                      itemCount: 1,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: getHeight(150),
                              width: getWidth(250),
                          
                              child: Column(
                                children: [
                                  CircleAvatar(
                                  radius: 63,
                                    child: CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4o6_L__OpGiaABnkt1mMaH_RY5XFA1ZrVnoizvPHt1iE1Dpwq0u4KCWD1hAJ92hJo-6Q&usqp=CAU"),
                                  ),
                                    Text(
                                      "Beeline",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 38.0, bottom: 8.0),
                                  child: Text(
                                    "Restaurant",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: getHeight(100),
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: getHeight(110),
                                    width: getWidth(110),
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://source.unsplash.com/random/$index",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  );
                                },
                                itemCount: 5,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, bottom: 8.0),
                                  child: Text(
                                    "Gid",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: getHeight(100),
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: getHeight(110),
                                    width: getWidth(110),
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://source.unsplash.com/random/$index",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  );
                                },
                                itemCount: 5,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, bottom: 8.0),
                                  child: Text(
                                    "Souvenirs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: getHeight(100),
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: getHeight(100),
                                    width: getWidth(110),
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://source.unsplash.com/random/$index",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  );
                                },
                                itemCount: 5,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
        clipBehavior: Clip.none,
      ),
    );
  }
}
