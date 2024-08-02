import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/core/recipe.dart';
import '../../views/utils/app_colors.dart';
import '../../views/widgets/modals/search_filter_modal.dart';
import '../../views/widgets/recipe_tile.dart';
import '../../../../services/search_service.dart';

class SearchScreen extends StatefulWidget {
  final bool openFilterModal;
  final String? initialCategory;
  const SearchScreen({
    super.key,
    this.openFilterModal = false,
    this.initialCategory,
  });

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  TextEditingController searchInputController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  List<Recipe> searchResult = [];
  String selectedSortBy = 'All';
  String? selectedCategory;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late List<String> _keywords;

  @override
  void initState() {
    super.initState();
    _keywords = List.from(SearchService.popularRecipeKeyword);
    selectedCategory = widget.initialCategory;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(searchFocusNode);
      if (selectedCategory != null) {
        _moveKeywordToStart(selectedCategory!);
      }
    });

    if (widget.openFilterModal) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _openFilterModal();
      });
    }
    searchInputController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    searchInputController.dispose();
    searchFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    _updateSearchResults();
  }

  void _updateSearchResults() {
    setState(() {
      searchResult = SearchService.searchRecipes(
          searchInputController.text, selectedSortBy, selectedCategory);
    });
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
            _updateSearchResults();
          });
        },
      ),
    );
  }

  void _moveKeywordToStart(String keyword) {
    if (_keywords.remove(keyword)) {
      _listKey.currentState?.removeItem(
        _keywords.length,
        (context, animation) => _buildKeywordItem(keyword, animation),
        duration: const Duration(milliseconds: 300),
      );
      _keywords.insert(0, keyword);
      _listKey.currentState
          ?.insertItem(0, duration: const Duration(milliseconds: 300));

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToLeft();
      });
    }
  }

  void _scrollToLeft() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels <= 0 &&
          scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
        scrollController.position.jumpTo(0);
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Search Recipe',
          style: TextStyle(
            fontFamily: 'inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        controller: scrollController,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // Section 1 - Search
          Container(
            width: MediaQuery.of(context).size.width,
            height: 145,
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Search TextField
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.primarySoft,
                          ),
                          child: TextField(
                            controller: searchInputController,
                            focusNode: searchFocusNode,
                            cursorColor: AppColor.secondary,
                            onChanged: (value) {
                              _updateSearchResults();
                            },
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 1,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              hintText: 'What do you want to eat?',
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.2),
                              ),
                              prefixIconConstraints:
                                  const BoxConstraints(maxHeight: 20),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 17,
                                vertical: 15,
                              ),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 12),
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
                        onTap: () {
                          _openFilterModal();
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.secondary,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/filter.svg',
                            color: AppColor.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Search Keyword Recommendation
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(top: 8),
                  child: AnimatedList(
                    key: _listKey,
                    controller: _scrollController,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    initialItemCount: _keywords.length,
                    itemBuilder: (context, index, animation) {
                      return _buildKeywordItem(_keywords[index], animation);
                    },
                  ),
                ),
              ],
            ),
          ),
          // Section 2 - Search Result
          Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: const Text(
                    'Search results:',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: searchResult.length,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                  itemBuilder: (context, index) {
                    return RecipeTile(
                      data: searchResult[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeywordItem(String keyword, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        child: TextButton(
          onPressed: () {
            setState(() {
              if (selectedCategory == keyword) {
                selectedCategory = null;
              } else {
                selectedCategory = keyword;
                _moveKeywordToStart(keyword);
              }
              _updateSearchResults();
            });
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: selectedCategory == keyword
                ? AppColor.secondary
                : Colors.transparent,
            side: BorderSide(
              color: Colors.white.withOpacity(0.15),
              width: 1,
            ),
          ),
          child: Text(
            keyword,
            style: TextStyle(
              color: selectedCategory == keyword
                  ? AppColor.primary
                  : Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
