import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/size_config.dart';

class InfoPage extends StatelessWidget {
  final String? name;
  final String? mal;
  final String? price;
  final String? image;
  const InfoPage({Key? key, required this.mal,required this.name,required this.price, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
              image: CachedNetworkImageProvider(image!),
            ),),
          ),
          Container(
            height: getHeight(400),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 35.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: getHeight(12)),
                      child: Text(
                        mal?? "")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: getWidth(40)),
                        Text(
                          "PRICE",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "RATING",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "DURATION",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: getWidth(40)),
                        Text(
                          price!,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        
                        Spacer(),
                        Text(
                          "8.9/10",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                       
                        Spacer(),
                        Text(
                          "24",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          "/hours",
                          style: TextStyle(fontSize: 12),
                        ),
                        Spacer(),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: getWidth(30),top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(color: Colors.white),
                        ),
              
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                         // shape: StadiumBorder(),
                          primary: Colors.orangeAccent,
                          minimumSize: Size(getWidth(320), getHeight(44))
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(20),),
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
