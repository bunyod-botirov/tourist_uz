import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/db.dart';
import 'package:tourist_uz/sizeof/size_config.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: getHeight(30)),
        centerTitle: true,
        title: Text(
          "Filter place",
          style: TextStyle(
            color: Colors.black,
            fontSize: getHeight(25),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
                vertical: getHeight(12), horizontal: getHeight(5)),
            height: getHeight(10),
            width: getWidth(73),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.red),
              color: Color.fromARGB(255, 250, 181, 188),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.refresh,
                  color: Colors.red,
                ),
                Text(
                  "Ref",
                  style: TextStyle(color: Colors.red, fontSize: getHeight(14)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getHeight(20), vertical: getHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sort by",
              style: TextStyle(
                color: Colors.black,
                fontSize: getHeight(17),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: getHeight(50),
              width: getWidth(414),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filter['sort'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['sort'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
