import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffFFF7E9),
      appBar: AppBar(
        backgroundColor: Color(0xffFFF7E9),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.west,
            color: Colors.black,
          ),
        ),
        title: Text(
          "record_page_title".tr(),
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceSize.height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: ClipOval(
                child: Image.asset(
                  "assets/image/bookclub.jpg",
                  scale: 3,
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.05,
            ),
            Text(
              "record_podcast_title".tr(),
              style: TextStyle(
                fontSize: deviceSize.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Playlist:" + "club_name".tr(),
              style: TextStyle(
                fontSize: deviceSize.width * 0.04,
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(children: [
                Text(
                  "00:00",
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.04,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "assets/image/waveform.png",
                  ),
                ),
                Text(
                  "01:14",
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.04,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: deviceSize.height * 0.02,
            ),
            Icon(
              Icons.radio_button_checked,
              size: deviceSize.width * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
