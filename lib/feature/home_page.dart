import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:telmi/feature/explore/presentation/explore_page.dart';
import 'package:telmi/feature/library/presentation/library_page.dart';
import 'package:telmi/feature/record/presentation/record_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  int selectedIndex = 0;
  final screen = [];
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => selectedIndex = index);
          },
          children: <Widget>[ExplorePage(), RecordPage(), LibraryPage()],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xffFFF7E9),
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
            _pageController?.animateToPage(value,
                duration: Duration(milliseconds: 500), curve: Curves.easeOut);
          });
        },
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'explore'.tr(),
          ),
          NavigationDestination(
            icon: Icon(Icons.mic_outlined),
            label: 'record'.tr(),
          ),
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'library'.tr(),
          ),
        ],
        //currentIndex: _selectedIndex,
        //  selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}
