import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:telmi/feature/home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffFFF7E9),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: deviceSize.height * 0.1),
              Image.asset(
                "assets/image/telmi.png",
                scale: 10,
              ),
              Expanded(
                flex: 4,
                child: PageView(
                  children: [
                    Onboarding(
                      image: "assets/image/coverimage.svg",
                      name: "onboarding_ttile1".tr(),
                      description: "onboarding_descrioption1".tr(),
                    ),
                    Onboarding(
                      image: "assets/image/target.svg",
                      name: 'onboarding_ttile2'.tr(),
                      description: "onboarding_descrioption2".tr(),
                    ),
                    Onboarding(
                      image: "assets/image/onboard3.svg",
                      name: "onboarding_ttile3".tr(),
                      description: "onboarding_descrioption3".tr(),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomePage())));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.black,
                      ),
                      child: Icon(
                        Icons.east,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class Onboarding extends StatelessWidget {
  String? image;
  String? name;
  String? description;
  Onboarding({this.name, this.image, this.description});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          SizedBox(height: deviceSize.height * 0.03),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: deviceSize.height * 0.4,
            child: SvgPicture.asset(image ?? ""),
          ),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            name ?? "",
            style: TextStyle(
                fontSize: deviceSize.width * 0.1, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              description ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: deviceSize.width * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
