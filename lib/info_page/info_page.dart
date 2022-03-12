import 'package:flutter/material.dart';
import 'package:tourist_uz/sizeof/size_config.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

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
              image: NetworkImage("https://m.economictimes.com/thumb/msid-86469051,width-1254,height-836,resizemode-4,imgsize-28786/indian-hotels.jpg"),
            ),),
          ),
          Container(
            height: getHeight(314),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                        """Dreamland beach there are white coral rocks that surround the beach, this creates a beautiful view of its own. 

  Include  
  Flights
  Transfer
  Accommondation


"""),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      Text(
                        "\$350",
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                      Text(
                        "/person",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        "8.9",
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                      Text(
                        "/10",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        "24",
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                      Text(
                        "/hours",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 20.0),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
