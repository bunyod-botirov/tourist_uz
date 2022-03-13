import 'package:flutter/material.dart';
import 'package:tourist_uz/constants/colors.dart';
import 'package:tourist_uz/constants/size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                size: getWidth(18),
              ),
              Text(
                "Back",
                style: TextStyle(
                  color: ColorsConst.black,
                  fontSize: getWidth(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          onTap: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: getWidth(20),
            icon: Icon(
              Icons.settings,
              size: getWidth(24),
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: getWidth(20),
            icon: Icon(
              Icons.chat,
              size: getWidth(24),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(38)),
        child: Column(
          children: [
            Container(
              width: getWidth(338),
              height: getHeight(118),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(22)),
              ),
              child: Row(
                children: [
                  horizontalBox(15),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/photo.jpg"),
                    radius: getWidth(30),
                  ),
                  horizontalBox(5),
                  Padding(
                    padding: EdgeInsets.all(getWidth(18)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Bunyod Botirov",
                          style: TextStyle(
                            fontSize: getWidth(16),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Since 12 March 2022",
                          style: TextStyle(
                            fontSize: getWidth(10),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: getWidth(97),
                          height: getHeight(19),
                          decoration: BoxDecoration(
                            color: ColorsConst.yellow,
                            borderRadius: BorderRadius.circular(getWidth(20)),
                          ),
                          child: Text(
                            "Member Gold >",
                            style: TextStyle(
                              color: ColorsConst.white,
                              fontSize: getWidth(10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            verticalBox(24),
            Container(
              width: getWidth(338),
              height: getHeight(84),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: ColorsConst.grey,
                      ),
                      Text(
                        "ExploraPay",
                        style: TextStyle(
                          color: ColorsConst.black,
                          fontSize: getWidth(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.blur_circular_outlined,
                        color: ColorsConst.grey,
                      ),
                      Text(
                        "Points",
                        style: TextStyle(
                          color: ColorsConst.black,
                          fontSize: getWidth(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.confirmation_num_rounded,
                        color: ColorsConst.grey,
                      ),
                      Text(
                        "Voucher",
                        style: TextStyle(
                          color: ColorsConst.black,
                          fontSize: getWidth(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.credit_card,
                        color: ColorsConst.grey,
                      ),
                      Text(
                        "PayLater",
                        style: TextStyle(
                          color: ColorsConst.black,
                          fontSize: getWidth(12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalBox(19),
            Container(
              width: getWidth(338),
              height: getHeight(85),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: ListTile(
                dense: true,
                title: Text(
                  "Saved",
                  style: TextStyle(
                    color: ColorsConst.black,
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci",
                  style: TextStyle(
                    color: ColorsConst.grey,
                    fontSize: getWidth(10),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            verticalBox(16),
            Container(
              width: getWidth(338),
              height: getHeight(85),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: ListTile(
                dense: true,
                title: Text(
                  "History",
                  style: TextStyle(
                    color: ColorsConst.black,
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci",
                  style: TextStyle(
                    color: ColorsConst.grey,
                    fontSize: getWidth(10),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            verticalBox(16),
            Container(
              width: getWidth(338),
              height: getHeight(85),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: ListTile(
                dense: true,
                title: Text(
                  "My Ratings",
                  style: TextStyle(
                    color: ColorsConst.black,
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci",
                  style: TextStyle(
                    color: ColorsConst.grey,
                    fontSize: getWidth(10),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            verticalBox(16),
            Container(
              width: getWidth(338),
              height: getHeight(85),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: ListTile(
                dense: true,
                title: Text(
                  "Help Center",
                  style: TextStyle(
                    color: ColorsConst.black,
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci",
                  style: TextStyle(
                    color: ColorsConst.grey,
                    fontSize: getWidth(10),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            verticalBox(16),
            Container(
              width: getWidth(338),
              height: getHeight(85),
              decoration: BoxDecoration(
                color: ColorsConst.white,
                borderRadius: BorderRadius.circular(getWidth(14)),
              ),
              child: ListTile(
                dense: true,
                title: Text(
                  "Customer Service",
                  style: TextStyle(
                    color: ColorsConst.black,
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci",
                  style: TextStyle(
                    color: ColorsConst.grey,
                    fontSize: getWidth(10),
                    fontWeight: FontWeight.w400,
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
