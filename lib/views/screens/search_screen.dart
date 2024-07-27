import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/modals/search_filter_modal.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

class SearchScreen extends StatefulWidget {
  final bool openFilterModal;

  SearchScreen({this.openFilterModal = false});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchInputController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  final List<Recipe> searchResult = RecipeHelper.searchResultRecipe;

  @override
  void initState() {
    super.initState();

    // Automatically open the keyboard when the Screen is pushed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(searchFocusNode);
    });

    // Open the filter modal if specified
    if (widget.openFilterModal) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _openFilterModal();
      });
    }
  }

  @override
  void dispose() {
    searchInputController.dispose();
    searchFocusNode.dispose();
    super.dispose();
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
      builder: (context) => SearchFilterModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels <= 0 &&
          _scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
        _scrollController.position.jumpTo(0);
      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Search Recipe',
          style: TextStyle(
            fontFamily: 'inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Search
          Container(
            width: MediaQuery.of(context).size.width,
            height: 145,
            color: AppColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Search TextField
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.primarySoft,
                          ),
                          child: TextField(
                            controller: searchInputController,
                            focusNode: searchFocusNode,
                            onChanged: (value) {
                              setState(() {});
                            },
                            style: TextStyle(
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
                                  BoxConstraints(maxHeight: 20),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 17),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Visibility(
                                visible: searchInputController.text.isEmpty,
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
                          child: SvgPicture.asset('assets/icons/filter.svg'),
                        ),
                      )
                    ],
                  ),
                ),
                // Search Keyword Recommendation
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 8),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemCount: popularRecipeKeyword.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.topCenter,
                        child: TextButton(
                          onPressed: () {
                            searchInputController.text =
                                popularRecipeKeyword[index];
                            // Optional: Trigger search or update state here
                          },
                          child: Text(
                            popularRecipeKeyword[index],
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.15),
                              width: 1,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          // Section 2 - Search Result
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'This is the result of your search..',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: searchResult.length,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16);
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
}
