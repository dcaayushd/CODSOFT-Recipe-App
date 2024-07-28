import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/views/screens/full_screen_image.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/ingredient_tile.dart';
import 'package:recipo/views/widgets/review_tile.dart';
import 'package:recipo/views/widgets/step_tile.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe data;
  RecipeDetailScreen({required this.data});

  @override
  _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(() {
      changeAppBarColor(_scrollController);
      preventScrollUpwards(_scrollController);
    });
  }

  Color appBarColor = Colors.transparent;
  String appBarTitle = '';
  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = AppColor.primary;
          appBarTitle = 'Recipe Details';
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
          appBarTitle = '';
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
        appBarTitle = '';
      });
    }
  }

  preventScrollUpwards(ScrollController scrollController) {
    if (scrollController.position.pixels < 0.0) {
      scrollController.jumpTo(0.0);
    }
  }

  // fab to write review
  showFAB(TabController tabController) {
    int reviewTabIndex = 2;
    if (tabController.index == reviewTabIndex) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: appBarColor,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(appBarTitle,
                style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 16)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/bookmark.svg',
                      color: Colors.white)),
            ],
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        ),
      ),
      // Post Review FAB
      floatingActionButton: Visibility(
        visible: showFAB(_tabController),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Wrap(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 6,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText: 'Write your review here...',
                                border: InputBorder.none,
                              ),
                            ),
                            // SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.red[700],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle the post review action here
                                      },
                                      child: Text('Post Review'),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: AppColor.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          backgroundColor: AppColor.primary,
        ),
      ),

      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Recipe Image
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FullScreenImage(
                      image:
                          Image.asset(widget.data.photo, fit: BoxFit.cover))));
            },
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.data.photo), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(gradient: AppColor.linearBlackTop),
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          // Section 2 - Recipe Info
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 20, bottom: 30, left: 16, right: 16),
            color: AppColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recipe Calories and Time
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/fire-filled.svg',
                      color: Colors.white,
                      width: 16,
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.calories,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.alarm, size: 16, color: Colors.white),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.time,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                // Recipe Title
                Container(
                  margin: EdgeInsets.only(bottom: 12, top: 16),
                  child: Text(
                    widget.data.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'inter'),
                  ),
                ),
                // Recipe Description
                Text(
                  widget.data.description,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                      height: 150 / 100),
                ),
              ],
            ),
          ),
          // TabBar ( Ingredients, Tutorial, Reviews )
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: AppColor.secondary,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              // labelColor: Colors.black,

              labelColor: AppColor.primary,

              unselectedLabelColor: Colors.black.withOpacity(0.6),
              labelStyle:
                  TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w500),
              // indicatorColor: Colors.black,
              indicatorColor: AppColor.primary,
              tabs: [
                Tab(
                  text: 'Ingredients',
                ),
                Tab(
                  text: 'Tutorial',
                ),
                Tab(
                  text: 'Reviews',
                ),
              ],
            ),
          ),
          // IndexedStack based on TabBar index
          IndexedStack(
            index: _tabController.index,
            children: [
              // Ingredients
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.data.ingredients.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return IngredientTile(
                    data: widget.data.ingredients[index],
                  );
                },
              ),
              // Tutorials
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.data.tutorial.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return StepTile(
                    data: widget.data.tutorial[index],
                  );
                },
              ),
              // Reviews
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.data.reviews.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ReviewTile(data: widget.data.reviews[index]);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
