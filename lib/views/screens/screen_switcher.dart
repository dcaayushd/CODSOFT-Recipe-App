import 'package:flutter/material.dart';
import 'package:recipo/views/screens/bookmarks_screen.dart';
import 'package:recipo/views/screens/explore_screen.dart';
import 'package:recipo/views/screens/home_screen.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/custom_bottom_navigation_bar.dart';

class ScreenSwitcher extends StatefulWidget {
  const ScreenSwitcher({super.key});

  @override
  ScreenSwitcherState createState() => ScreenSwitcherState();
}

class ScreenSwitcherState extends State<ScreenSwitcher> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          [
            ExploreScreen(),
            HomeScreen(),
            BookmarksScreen(),
          ][_selectedIndex],
          const BottomGradientWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

class BottomGradientWidget extends StatelessWidget {
  const BottomGradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: 100,
        decoration: BoxDecoration(gradient: AppColor.bottomShadow),
      ),
    );
  }
}
