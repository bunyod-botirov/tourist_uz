import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/db.dart';
import 'package:tourist_uz/constants/size_config.dart';
import 'package:tourist_uz/provider/slider_provider.dart';

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
            SizedBox(height: getHeight(15)),
            Text(
              "Type",
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
                itemCount: filter['type'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['type'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(15)),
            Text(
              "Operational",
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
                itemCount: filter['Operational'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['Operational'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(20)),
            Text(
              "Budget",
              style: TextStyle(
                color: Colors.black,
                fontSize: getHeight(17),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: getHeight(20)),
            RangeSlider(
              values: context.watch<SliverProvider>().selekt,
              min: 0.1,
              max: 1000.0,
              divisions: 1000,
              labels: RangeLabels("${context.watch<SliverProvider>().selekt.start}","${context.watch<SliverProvider>().selekt.end}"),
              onChanged: (v){
                context.read<SliverProvider>().addSliver(v);
              },
            ),
            SizedBox(height: getHeight(15)),
            Text(
              "Ratings",
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
                itemCount: filter['Ratings'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['Ratings'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(15)),
            Text(
              "Include",
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
                itemCount: filter['Include1'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['Include1'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: getHeight(50),
              width: getWidth(414),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filter['Include2'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(getWidth(3)),
                    child: Chip(
                      backgroundColor: Color.fromARGB(255, 247, 210, 154),
                      label: Text(filter['Include2'][index],
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: getHeight(70),horizontal: getWidth(30)),
              height: getHeight(50),
              width: getWidth(340),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: ColorsConst.yellow,
              ),
              child: Center(
                child: Text("Apply",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getHeight(20)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
