import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:telmi/feature/profile/presentation/profile_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF7E9),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: deviceSize.height * 0.1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "good_morning_message".tr(),
                    style: TextStyle(
                        height: 1,
                        fontSize: deviceSize.width * 0.1,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ProfilePage())));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/anouk.png"),
                    ),
                  )
                ],
              ),
              // Text(
              //   "Good ",
              //   style: TextStyle(
              //       fontSize: deviceSize.width * 0.1,
              //       fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   "morning",
              //   style: TextStyle(
              //       height: 1.0,
              //       fontSize: deviceSize.width * 0.1,
              //       fontWeight: FontWeight.bold),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "explore_text_message".tr(),
                  style: TextStyle(fontSize: deviceSize.width * 0.05),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 25),
                height: deviceSize.height * 0.23,
                width: deviceSize.width * 0.9,
                decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage("assets/image/bookclub.jpg"),
                    //     fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff86BDB8)),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "recommended_card_title".tr(),
                          style: TextStyle(
                              height: 1.2,
                              fontSize: deviceSize.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "card_time".tr(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Row(
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "card_message".tr(),
                              style: TextStyle(
                                  fontSize: deviceSize.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )),
                    Expanded(
                        child: SvgPicture.asset("assets/image/coverimage.svg"))
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "explore_club_text".tr(),
                style: TextStyle(
                  fontSize: deviceSize.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("club_name1".tr(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("club_name2".tr(),
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("club_name3".tr(),
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("club_name4".tr(),
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: deviceSize.height * 0.25,
                      width: deviceSize.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffFE6D4E),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "club_card_title1".tr(),
                            style: TextStyle(
                                fontSize: deviceSize.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "club_card_time".tr(),
                                style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.play_circle,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Flexible(
                              child: SvgPicture.asset(
                                  "assets/image/basketball.svg"))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: deviceSize.height * 0.25,
                      width: deviceSize.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffB08DE3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "club_card_title2".tr(),
                            style: TextStyle(
                                fontSize: deviceSize.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "club_card_time2".tr(),
                                style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.play_circle,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Flexible(
                              child:
                                  SvgPicture.asset("assets/image/sketch.svg"))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
