import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF7E9),
      appBar: AppBar(
        backgroundColor: Color(0xffFFF7E9),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.west,
            color: Colors.black,
          ),
        ),
        title: Text(
          "library".tr(),
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: deviceSize.height * 0.02),
          Text(
            "recently_played".tr(),
            style: TextStyle(
              fontSize: deviceSize.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/bookclub.jpg",
            title: "library_podcast_title1".tr(),
            episode: "library_podcast_episode1".tr(),
            minute: "library_podcast_time1".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/image1.jpg",
            title: "library_podcast_title2".tr(),
            episode: "library_podcast_episode2".tr(),
            minute: "library_podcast_time2".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/bookclub.jpg",
            title: "library_podcast_title3".tr(),
            episode: "library_podcast_episode3".tr(),
            minute: "library_podcast_time3".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/image1.jpg",
            title: "library_podcast_title4".tr(),
            episode: "library_podcast_episode4".tr(),
            minute: "library_podcast_time4".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/bookclub.jpg",
            title: "library_podcast_title5".tr(),
            episode: "library_podcast_episode5".tr(),
            minute: "library_podcast_time5".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/bookclub.jpg",
            title: "library_podcast_title6".tr(),
            episode: "library_podcast_episode6".tr(),
            minute: "library_podcast_time6".tr(),
          ),
          SizedBox(height: deviceSize.height * 0.03),
          PodcastPlaylist(
            photo: "assets/image/bookclub.jpg",
            title: "library_podcast_title7".tr(),
            episode: "library_podcast_episode7".tr(),
            minute: "library_podcast_time7".tr(),
          ),
        ],
      ),
    );
  }
}

class PodcastPlaylist extends StatelessWidget {
  String photo;
  String title;
  String episode;
  String minute;
  PodcastPlaylist(
      {required this.photo,
      required this.title,
      required this.episode,
      required this.minute});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            photo,
            scale: 10,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: deviceSize.width * 0.04,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                episode,
                style: TextStyle(
                  fontSize: deviceSize.width * 0.04,
                  // color: Colors.grey
                  //fontWeight: FontWeight.w500
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.schedule,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      minute,
                      style: TextStyle(
                          fontSize: deviceSize.width * 0.04,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
