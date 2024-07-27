import 'package:flutter/material.dart';
import 'package:recipo/views/screens/bookmarks_screen.dart';
import 'package:recipo/views/screens/explore_screen.dart';
import 'package:recipo/views/screens/home_screen.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/custom_bottom_navigation_bar.dart';

class ScreenSwitcher extends StatefulWidget {
  @override
  _ScreenSwitcherState createState() => _ScreenSwitcherState();
}

class _ScreenSwitcherState extends State<ScreenSwitcher> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
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
            HomeScreen(),
            ExploreScreen(),
            BookmarksScreen(),
          ][_selectedIndex],
          BottomGradientWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}

class BottomGradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(gradient: AppColor.bottomShadow),
      ),
    );
  }
}
