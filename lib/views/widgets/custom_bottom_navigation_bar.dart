import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../views/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _handleTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => _handleTap(0),
              icon: SvgPicture.asset(
                'assets/icons/discover.svg',
                color: _selectedIndex == 0 ? Colors.white : Colors.grey[500],
                height: 30,
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () => _handleTap(1),
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: _selectedIndex == 1 ? Colors.white : Colors.grey[500],
                height: 30,
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () => _handleTap(2),
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                color: _selectedIndex == 2 ? Colors.white : Colors.grey[500],
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
