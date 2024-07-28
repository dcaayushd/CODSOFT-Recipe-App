// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:recipo/models/core/recipe.dart';
// import 'package:recipo/models/helper/recipe_helper.dart';
// import 'package:recipo/views/utils/AppColor.dart';
// import 'package:recipo/views/widgets/modals/search_filter_modal.dart';
// import 'package:recipo/views/widgets/recipe_tile.dart';

// class BookmarksScreen extends StatefulWidget {
//   @override
//   _BookmarksScreenState createState() => _BookmarksScreenState();
// }

// class _BookmarksScreenState extends State<BookmarksScreen> {
//   TextEditingController searchInputController = TextEditingController();
//   List<Recipe> bookmarkedRecipe = RecipeHelper.bookmarkedRecipe;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor.primary,
//         foregroundColor: Colors.white,
//         centerTitle: true,
//         elevation: 0,
//         title: Text('Bookmarks',
//             style: TextStyle(
//                 fontFamily: 'inter',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16)),
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         physics: BouncingScrollPhysics(),
//         children: [
//           // Section 1 - Search Bar
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 95,
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             color: AppColor.primary,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Search Bar
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // Search TextField
//                     Expanded(
//                       child: Container(
//                         height: 50,
//                         margin: EdgeInsets.only(right: 15),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: AppColor.primarySoft),
//                         child: TextField(
//                           controller: searchInputController,
//                           onChanged: (value) {
//                             print(searchInputController.text);
//                             setState(() {});
//                           },
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w400),
//                           maxLines: 1,
//                           textInputAction: TextInputAction.search,
//                           decoration: InputDecoration(
//                             hintText: 'What do you want to eat?',
//                             hintStyle:
//                                 TextStyle(color: Colors.white.withOpacity(0.2)),
//                             prefixIconConstraints:
//                                 BoxConstraints(maxHeight: 20),
//                             contentPadding:
//                                 EdgeInsets.symmetric(horizontal: 17),
//                             focusedBorder: InputBorder.none,
//                             border: InputBorder.none,
//                             prefixIcon: Visibility(
//                               visible: (searchInputController.text.isEmpty)
//                                   ? true
//                                   : false,
//                               child: Container(
//                                 margin: EdgeInsets.only(left: 10, right: 12),
//                                 child: SvgPicture.asset(
//                                   'assets/icons/search.svg',
//                                   width: 20,
//                                   height: 20,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // Filter Button
//                     GestureDetector(
//                       onTap: () {
//                         showModalBottomSheet(
//                             context: context,
//                             backgroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(20),
//                                     topRight: Radius.circular(20))),
//                             builder: (context) {
//                               return SearchFilterModal();
//                             });
//                       },
//                       child: Container(
//                         width: 50,
//                         height: 50,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: AppColor.secondary,
//                         ),
//                         child: SvgPicture.asset('assets/icons/filter.svg'),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           // Section 2 - Bookmarked Recipe
//           Container(
//             padding: EdgeInsets.all(16),
//             width: MediaQuery.of(context).size.width,
//             child: ListView.separated(
//               shrinkWrap: true,
//               itemCount: bookmarkedRecipe.length,
//               physics: NeverScrollableScrollPhysics(),
//               separatorBuilder: (context, index) {
//                 return SizedBox(height: 16);
//               },
//               itemBuilder: (context, index) {
//                 return RecipeTile(
//                   data: bookmarkedRecipe[index],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/modals/search_filter_modal.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  final TextEditingController searchInputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Recipe> bookmarkedRecipe = RecipeHelper.bookmarkedRecipe;
  bool isRefreshing = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels < -50 && !isRefreshing) {
        refreshRecipes();
      }
    });
  }

  Future<void> refreshRecipes() async {
    setState(() {
      isRefreshing = true;
    });

    // Simulate a network request
    await Future.delayed(Duration(seconds: 2));
    bookmarkedRecipe = RecipeHelper.bookmarkedRecipe;

    setState(() {
      isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text('Bookmarks',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SearchBarDelegate(
                  searchInputController: searchInputController,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: [
                          RecipeTile(
                            data: bookmarkedRecipe[index],
                          ),
                          if (index < bookmarkedRecipe.length - 1)
                            SizedBox(height: 16),
                        ],
                      );
                    },
                    childCount: bookmarkedRecipe.length,
                  ),
                ),
              ),
            ],
          ),
          if (isRefreshing)
            Center(
              child: CircularProgressIndicator(
                color: AppColor.primary,
              ),
            ),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final TextEditingController searchInputController;

  SearchBarDelegate({required this.searchInputController});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 95,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Search TextField
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.primarySoft),
                  child: TextField(
                    controller: searchInputController,
                    onChanged: (value) {
                      print(searchInputController.text);
                    },
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: 'Search Your Bookmarks',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.2)),
                      prefixIconConstraints: BoxConstraints(maxHeight: 20),
                      contentPadding: EdgeInsets.symmetric(horizontal: 17),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Visibility(
                        visible:
                            (searchInputController.text.isEmpty) ? true : false,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 12),
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Filter Button
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      builder: (context) {
                        return SearchFilterModal();
                      });
                },
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 95;

  @override
  double get minExtent => 95;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
