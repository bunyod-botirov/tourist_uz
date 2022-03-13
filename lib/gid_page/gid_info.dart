import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/sizeof/size_config.dart';

class GidInfo extends StatelessWidget {
  const GidInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: getHeight(380),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        "https://cdn2.lamag.com/wp-content/uploads/sites/6/2019/06/keanu-reeves-person-of-the-year-karwai-tang-getty.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 300.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Gidni Ismi",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 407,
            left: 0,
            child: Container(
              height: getHeight(319),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(35.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),

                    //color: Colors.greenAccent,
                  ),
                  color: Colors.grey.shade100),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: getHeight(150),
                        width: getWidth(250),
                        // color: Colors.cyan,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Imi ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Yoshi: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Price ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "Nechta Till Bilishi : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "  1. Inglish ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,
                                    color: Colors.grey),
                              ),
                              Text(
                                "  2. Rassian ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getHeight(60),
                      width: double.infinity,
                      //color: Colors.cyan,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKQK6svPysf-PNZEL20UmXtUIACLHmdx-Shj990vLLeIAmG26h3D-l_iOVaqC330PcyYs&usqp=CAU"),
                                  fit: BoxFit.cover,
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
                      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
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
