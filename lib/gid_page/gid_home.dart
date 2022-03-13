import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/gid_page/gid_info.dart';
import 'package:tourist_uz/model/db.dart';

class GidHome extends StatelessWidget {
  const GidHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Text(""),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Gids",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: getWidth(18.0), top: getWidth(8.0)),
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
              width: getWidth(400),
              child: GridView.builder(
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),
                scrollDirection: Axis.vertical,
              
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
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
                            backgroundImage: CachedNetworkImageProvider(firestore['Guides'][index]['photo']),),
                        ),
                          
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                        child: Row(
                          children: [
                            Text(
                              firestore['Guides'][index]['fullName'].toString().split(" ")[0],
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Text(
                                  firestore['Guides'][index]['fullName'].toString().split(" ")[1],
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Text(
                                  firestore['Guides'][index]['price'],
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      
                          ],
                        ),
                      )
                      ],
                    ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GidInfo(img:firestore['Guides'][index]['photo'],price: firestore['Guides'][index]['price'],name: firestore['Guides'][index]['fullName'],til: firestore['Guides'][index]['languages'],),));
                    },
                  );
                },
                itemCount: 6,
                
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
