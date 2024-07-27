// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:recipo/views/utils/AppColor.dart';

// // ignore: must_be_immutable
// class CustomBottomNavigationBar extends StatefulWidget {
//   int selectedIndex;
//   ValueChanged<int> onItemTapped;

//   CustomBottomNavigationBar({
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   _CustomBottomNavigationBarState createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 60, right: 60, bottom: 20),
//       color: Colors.transparent,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: SizedBox(
//           height: 70,
//           child: BottomNavigationBar(
//             currentIndex: widget.selectedIndex,
//             onTap: widget.onItemTapped,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             elevation: 0,
//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/home.svg',
//                   color: widget.selectedIndex == 0
//                       ? AppColor.primary
//                       : Colors.grey[600],
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/discover.svg',
//                   color: widget.selectedIndex == 1
//                       ? AppColor.primary
//                       : Colors.grey[600],
//                   height: 28,
//                   width: 26,
//                 ),
//                 label: 'Explore',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/bookmark.svg',
//                   color: widget.selectedIndex == 2
//                       ? AppColor.primary
//                       : Colors.grey[600],
//                 ),
//                 label: 'Bookmarks',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:recipo/views/utils/AppColor.dart';

// // ignore: must_be_immutable
// class CustomBottomNavigationBar extends StatefulWidget {
//   int selectedIndex;
//   ValueChanged<int> onItemTapped;

//   CustomBottomNavigationBar({
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   _CustomBottomNavigationBarState createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
//       color: Colors.transparent,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Container(
//           height: 70,
//           child: BottomNavigationBar(
//             backgroundColor: AppColor.primary,
//             currentIndex: widget.selectedIndex,
//             onTap: widget.onItemTapped,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             elevation: 0,
//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/home.svg',
//                   color: widget.selectedIndex == 0
//                       ? Colors.white
//                       : Colors.grey[500],
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/discover.svg',
//                   color: widget.selectedIndex == 1
//                       ? Colors.white
//                       : Colors.grey[500],
//                   height: 28,
//                   width: 26,
//                 ),
//                 label: 'Explore',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   'assets/icons/bookmark.svg',
//                   color: widget.selectedIndex == 2
//                       ? Colors.white
//                       : Colors.grey[500],
//                 ),
//                 label: 'Bookmarks',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipo/views/utils/AppColor.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  ValueChanged<int> onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 110,
          color: AppColor.primary,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: widget.selectedIndex,
            onTap: widget.onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: widget.selectedIndex == 0
                      ? Colors.white
                      : const Color.fromRGBO(158, 158, 158, 1),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/discover.svg',
                  color: widget.selectedIndex == 1
                      ? Colors.white
                      : Colors.grey[500],

                  height: 28,
                  // width: 26,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bookmark.svg',
                  color: widget.selectedIndex == 2
                      ? Colors.white
                      : Colors.grey[500],
                ),
                label: 'Bookmarks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
