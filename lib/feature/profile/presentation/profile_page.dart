import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> items = ["English", "French"];
  String? selectedItem = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF7E9),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          const SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('profile_settings'.tr(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(
                        height: 4,
                      ),
                      CustomListTileBuilder(
                        icon: (Icons.person_outline),
                        title: 'edit_profile'.tr(),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.key_outlined),
                        title: 'change_password'.tr(),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.logout),
                        title: 'logout'.tr(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('app_settings'.tr(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(
                        height: 4,
                      ),
                      CustomListTileBuilder(
                        icon: (Icons.notifications_outlined),
                        title: 'notification'.tr(),
                        trailing: const CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.deepPurpleAccent,
                          child: Text(
                            '14',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.star_outlined),
                        title: 'rate_review'.tr(),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.security_outlined),
                        title: 'privacy_policy'.tr(),
                        trailing: Icon(
                          Icons.launch_rounded,
                          color: Colors.grey[400],
                        ),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.key_outlined),
                        title: 'terms_conditions'.tr(),
                        trailing: Icon(
                          Icons.launch_rounded,
                          color: Colors.grey[400],
                        ),
                      ),
                      dividerBuilder(),
                      CustomListTileBuilder(
                        icon: (Icons.language_rounded),
                        title: 'contact_us'.tr(),
                      ),
                      dividerBuilder(),
                      // Wrap(
                      //   children: translator.locals().map((i) {
                      //     return OutlinedButton(
                      //       onPressed: () {
                      //         translator.setNewLanguage(
                      //           context,
                      //           newLanguage: i.languageCode,
                      //           remember: true,
                      //           restart: true,
                      //         );
                      //       },
                      //       child: Text(i.languageCode),
                      //     );
                      //   }).toList(),
                      // ),
                      CustomListTileBuilder(
                        icon: (Icons.translate_rounded),
                        title: 'language'.tr(),
                        trailing: DropdownButton<String>(
                          dropdownColor: Color(0xffFFF7E9),
                          value: selectedItem,
                          onChanged: (item) {
                            setState(() {
                              selectedItem = item;
                            });
                            if (selectedItem == "English") {
                              translator.setNewLanguage(
                                context,
                                newLanguage: "en",
                                remember: true,
                                restart: true,
                              );
                            } else {
                              translator.setNewLanguage(
                                context,
                                newLanguage: "fr",
                                remember: true,
                                restart: true,
                              );
                            }
                          },
                          items: items
                              .map(
                                (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                    )),
                              )
                              .toList(),
                        ),
                      ),
                      dividerBuilder(),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${"version".tr()} 1.0',
                        style: TextStyle(color: Colors.grey[700])),
                    Text.rich(
                      TextSpan(
                        text: 'powered_by'.tr(),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Storyskimo',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget dividerBuilder() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Divider(
        height: 10,
      ),
    );

class CustomListTileBuilder extends StatelessWidget {
  CustomListTileBuilder({
    Key? key,
    required this.icon,
    required this.title,
    this.trailing = Icons.arrow_forward_ios,
  }) : super(key: key);

  IconData icon;
  String title;
  dynamic trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.grey[400]),
              const SizedBox(
                width: 8,
              ),
              Text(title, overflow: TextOverflow.ellipsis),
            ],
          ),
          trailing == Icons.arrow_forward_ios
              ? Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                  size: 13,
                )
              : trailing,
        ],
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: buildListTile(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) {
    return AppBar(
      elevation: 0,
      backgroundColor: buildAppBarColor(shrinkOffset),
      automaticallyImplyLeading: true,
      // leading: InkWell(onTap: () {},
      //  child: Icon(Icons.arrow_back)),
      title: Text('setting'.tr()),
    );
  }

  Color buildAppBarColor(shrinkOffset) {
    if (shrinkOffset < 30) {
      return Colors.transparent;
    } else {
      return Colors.black;
    }
  }

  Widget buildBackground(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/image5.jpeg'),
            ),
          ),
          child: Container(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      );

  Widget buildListTile(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/image/anouk.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('Anouk.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('anouk@telmi.co',
                      style: TextStyle(color: Colors.white70, fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        color: Colors.green[600],
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'user_status'.tr(),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.star, color: Colors.white, size: 15),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.6(3.2K ${"reviews".tr()} )',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
