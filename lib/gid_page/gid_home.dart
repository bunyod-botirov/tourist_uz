import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/size_config.dart';

class GidHome extends StatelessWidget {
  const GidHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Gids",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 8.0),
                  child: Text(
                    "More then 5 languages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: getWidth(350),
              child: GridView.builder(
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    height: getHeight(160),
                    width: getWidth(150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.grey)
                    ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: CircleAvatar(
                          radius: 44,
                          child: CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4mh8vDFdunxMQ7wyAB6uP8C2mU7Kwjw9RIA&usqp=CAU"),),
                      ),
                        
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Ismi ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Text(
                                "Familiya ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Text(
                                "Kunlik / ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(
                                "narxi",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.orangeAccent),)
                        ],
                      ),
                    )
                    ],
                  ),
                  );
                },
                itemCount: 15,
                
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
