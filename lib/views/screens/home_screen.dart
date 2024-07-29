import 'package:flutter/material.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/screens/delicious_today_screen.dart';
import 'package:recipo/views/screens/newly_posted_screen.dart';
import 'package:recipo/views/screens/profile_screen.dart';
import 'package:recipo/views/screens/search_screen.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/custom_app_bar.dart';
import 'package:recipo/views/widgets/dummy_search_bar.dart';
import 'package:recipo/views/widgets/featured_recipe_card.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';
import 'package:recipo/views/widgets/recommendation_recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Recipe> featuredRecipe = RecipeHelper.featuredRecipe;
  List<Recipe> recommendationRecipe = RecipeHelper.recommendationRecipe;
  List<Recipe> newlyPostedRecipe = RecipeHelper.newlyPostedRecipe;
  bool isRefreshing = false;
  ScrollController _scrollController = ScrollController();
  bool useWhiteText = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset <= -100 && !isRefreshing) {
      _refreshData();
    }

    double primaryContainerHeight = 295;
    bool isWithinPrimaryContainer =
        _scrollController.position.pixels > primaryContainerHeight;

    setState(() {
      useWhiteText = isWithinPrimaryContainer;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _refreshData() async {
    if (isRefreshing) return;

    setState(() {
      isRefreshing = true;
    });

    // Simulate network request
    await Future.delayed(const Duration(seconds: 2));

    // Update data
    setState(() {
      featuredRecipe = RecipeHelper.featuredRecipe;
      recommendationRecipe = RecipeHelper.recommendationRecipe;
      newlyPostedRecipe = RecipeHelper.newlyPostedRecipe;
      isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(
          'Recipo',
          style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w700),
        ),
        showProfilePhoto: true,
        profilePhoto: const AssetImage('assets/images/pp.png'),
        profilePhotoOnPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
        },
      ),
      body: Stack(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Column(
            children: [
              // Fixed section
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    DummySearchBar(
                      routeTo: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                      },
                      openFilter: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                SearchScreen(openFilterModal: true)));
                      },
                    ),
                  ],
                ),
              ),
              // Scrollable section
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      // Delicious Today
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Delicious Today',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'inter'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        DeliciousTodayScreen()));
                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              child: const Text('see all'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 220,
                        child: ListView.separated(
                          itemCount: featuredRecipe.length,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 16),
                          itemBuilder: (context, index) =>
                              FeaturedRecipeCard(data: featuredRecipe[index]),
                        ),
                      ),
                      // Recommendation Recipe
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: const Text(
                                'Today recommendation based on your taste...',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 174,
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: recommendationRecipe.length,
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 16),
                                itemBuilder: (context, index) =>
                                    RecommendationRecipeCard(
                                  data: recommendationRecipe[index],
                                  useWhiteText: useWhiteText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Newly Posted
                      Container(
                        margin: const EdgeInsets.only(top: 14),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Newly Posted',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'inter'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const NewlyPostedScreen()));
                                  },
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14)),
                                  child: const Text('see all'),
                                ),
                              ],
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              itemCount: 3,
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) =>
                                  RecipeTile(data: newlyPostedRecipe[index]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (isRefreshing)
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColor.primary),
              ),
            ),
        ],
      ),
    );
  }
}
