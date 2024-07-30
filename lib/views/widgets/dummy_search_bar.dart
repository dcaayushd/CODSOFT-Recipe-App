import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../views/utils/app_colors.dart';

class DummySearchBar extends StatelessWidget {
  final VoidCallback routeTo;
  final VoidCallback openFilter;

  const DummySearchBar(
      {super.key, required this.routeTo, required this.openFilter});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: routeTo,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side - Search Box
            Expanded(
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(right: 15),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primarySoft),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg',
                        color: Colors.white, height: 18, width: 18),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        'What do you want to eat?',
                        style: TextStyle(color: Colors.white.withOpacity(0.3)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Right side - filter button
            GestureDetector(
              onTap: openFilter,
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.secondary,
                ),
                child: SvgPicture.asset('assets/icons/filter.svg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
