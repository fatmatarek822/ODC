import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:odc_project/view/pages/home.dart';
import 'package:odc_project/view/pages/news.dart';
import 'package:odc_project/view/pages/setting.dart';

class LayoutScreen extends StatefulWidget {
   LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  int currentIndex =0;

  List<Widget> pages =[
    HomeScreen(),
    NewsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: pages.elementAt(currentIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(

              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.orange,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',

                ),
                GButton(
                  icon: Icons.newspaper_outlined,
                  text: 'News',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Setting',
                ),
              ],
              selectedIndex: currentIndex,
              onTabChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),


      // Center(
      //   child: pages[currentIndex],
      // ),
      //
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: Colors.white,
      //   animationDuration: Duration(seconds: 1),
      //   labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      //   selectedIndex: currentIndex,
      //   onDestinationSelected: (int newIndex){
      //     setState(() {
      //       currentIndex= newIndex;
      //     });
      //   }, destinations: [
      //     NavigationDestination(icon: Icon(Icons.home_outlined,), label: 'Home',),
      //     NavigationDestination(icon: Icon(Icons.newspaper), label: 'News',),
      //     NavigationDestination(icon: Icon(Icons.settings), label: 'Setting',),
      //
      // ],
      // ),
    );
  }
}


