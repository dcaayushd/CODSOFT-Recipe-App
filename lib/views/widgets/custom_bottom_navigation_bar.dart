import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../views/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, 'assets/icons/discover.svg'),
          _buildNavItem(1, 'assets/icons/home.svg'),
          _buildNavItem(2, 'assets/icons/bookmark.svg'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath) {
    return IconButton(
      onPressed: () => onItemTapped(index),
      icon: SvgPicture.asset(
        iconPath,
        color: selectedIndex == index ? Colors.white : Colors.grey[500],
        height: 30,
        width: 30,
      ),
    );
  }
}