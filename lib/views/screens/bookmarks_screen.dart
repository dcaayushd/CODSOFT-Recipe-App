import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/core/recipe.dart';
import '../../services/bookmark_service.dart';
import '../../views/utils/app_colors.dart';
import '../../views/widgets/recipe_tile.dart';

import '../widgets/modals/search_filter_modal.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  BookmarksScreenState createState() => BookmarksScreenState();
}

class BookmarksScreenState extends State<BookmarksScreen> {
  final TextEditingController searchInputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isRefreshing = false;
  String selectedSortBy = 'All';
  List<Recipe> filteredBookmarks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    searchInputController.addListener(_onSearchChanged);
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    setState(() {
      isLoading = true;
    });
    await BookmarkService.getBookmarkedRecipes(sortBy: selectedSortBy);
    setState(() {
      isLoading = false;
    });
  }

  void _onSearchChanged() {
    String query = searchInputController.text;
    if (query.isEmpty) {
      setState(() {
        filteredBookmarks = [];
      });
    } else {
      BookmarkService.getBookmarkedRecipes(sortBy: selectedSortBy)
          .then((bookmarks) {
        setState(() {
          filteredBookmarks =
              BookmarkService.searchBookmarkedRecipes(bookmarks, query);
        });
      });
    }
  }

  void _openFilterModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
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
            _loadBookmarks();
          });
        },
      ),
    );
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
    await _loadBookmarks();
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
        title: const Text('Bookmarks',
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
            physics: const AlwaysScrollableScrollPhysics(),
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
                  if (isLoading) {
                    return SliverFillRemaining(
                      child: Center(
                        child:
                            CircularProgressIndicator(color: AppColor.primary),
                      ),
                    );
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(child: Text('No bookmarks yet')),
                    );
                  }

                  List<Recipe> displayedRecipes =
                      searchInputController.text.isEmpty
                          ? snapshot.data!
                          : filteredBookmarks;

                  return SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final recipe = displayedRecipes[index];
                          bool isLastItem =
                              index == displayedRecipes.length - 1;
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                if (!isLastItem) const SizedBox(height: 16),
                              ],
                            ),
                          );
                        },
                        childCount: displayedRecipes.length,
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
    searchInputController.removeListener(_onSearchChanged);
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    searchInputController.dispose();
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: const BorderRadius.only(
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
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.primarySoft),
                  child: TextField(
                    controller: searchInputController,
                    onChanged: (value) {
                      // Implement search functionality here
                    },
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: 'Search Your Bookmarks',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.2)),
                      prefixIconConstraints:
                          const BoxConstraints(maxHeight: 20),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 17),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 10, right: 12),
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
