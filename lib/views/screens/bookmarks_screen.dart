import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/services/bookmark_service.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

import '../widgets/modals/search_filter_modal.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  final TextEditingController searchInputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isRefreshing = false;
  String selectedSortBy = 'All';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    BookmarkService.getBookmarkedRecipes();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels < -50 && !isRefreshing) {
      setState(() {
        isRefreshing = true;
      });
      refreshBookmarks();
    }
  }

  Future<void> refreshBookmarks() async {
    await BookmarkService.getBookmarkedRecipes();
    setState(() {
      isRefreshing = false;
    });
  }

  void _openFilterModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => SearchFilterModal(
        initialSortBy: selectedSortBy,
        onSortByChanged: (newSortBy) {
          setState(() {
            selectedSortBy = newSortBy;
            // Add logic here to update the bookmarks based on the selectedSortBy
          });
        },
      ),
    );
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
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SearchBarDelegate(
                  searchInputController: searchInputController,
                  openFilterModal: _openFilterModal,
                ),
              ),
              StreamBuilder<List<Recipe>>(
                stream: BookmarkService.bookmarksStream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SliverFillRemaining(
                      child: Center(
                        child:
                            CircularProgressIndicator(color: AppColor.primary),
                      ),
                    );
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return SliverFillRemaining(
                      child: Center(child: Text('No bookmarks yet')),
                    );
                  }
                  return SliverPadding(
                    padding: EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final recipe = snapshot.data![index];
                          bool isLastItem = index == snapshot.data!.length - 1;
                          return Dismissible(
                            key: Key(recipe.title),
                            direction: DismissDirection.endToStart,
                            background: Container(
                              margin: EdgeInsets.only(
                                bottom: isLastItem ? 0 : 15,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: SvgPicture.asset(
                                'assets/icons/delete.svg',
                                width: 30,
                              ),
                            ),
                            onDismissed: (direction) {
                              BookmarkService.toggleBookmark(recipe);
                            },
                            child: Column(
                              children: [
                                RecipeTile(
                                  data: recipe,
                                ),
                                if (!isLastItem) SizedBox(height: 16),
                              ],
                            ),
                          );
                        },
                        childCount: snapshot.data!.length,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          if (isRefreshing)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColor.primary,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final TextEditingController searchInputController;
  final VoidCallback openFilterModal;

  SearchBarDelegate({
    required this.searchInputController,
    required this.openFilterModal,
  });

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
                      // Implement search functionality here
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
                onTap: openFilterModal,
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
