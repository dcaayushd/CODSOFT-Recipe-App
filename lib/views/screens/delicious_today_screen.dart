import 'package:flutter/material.dart';
import '../../models/core/recipe.dart';
import '../../models/helper/recipe_helper.dart';
import '../../views/utils/app_colors.dart';
import '../../views/widgets/popular_recipe_card.dart';
import '../../views/widgets/recipe_tile.dart';

class DeliciousTodayScreen extends StatefulWidget {
  const DeliciousTodayScreen({super.key});

  @override
  DeliciousTodayScreenState createState() => DeliciousTodayScreenState();
}

class DeliciousTodayScreenState extends State<DeliciousTodayScreen> {
  final ScrollController _scrollController = ScrollController();
  List<Recipe> popularRecipes = RecipeHelper.popularRecipes;
  List<Recipe> featuredRecipe = RecipeHelper.featuredRecipe;
  bool isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels < -50 && !isRefreshing) {
      refreshRecipes();
    }
  }

  Future<void> refreshRecipes() async {
    setState(() {
      isRefreshing = true;
    });
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 2));
    popularRecipes = RecipeHelper.popularRecipes;
    featuredRecipe = RecipeHelper.featuredRecipe;
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
        elevation: 0,
        centerTitle: true,
        title: const Text('Delicious Today',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                height: 210,
                padding: const EdgeInsets.only(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: PopularRecipeCard(data: popularRecipes),
              ),
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    if (scrollInfo.metrics.pixels < -50 && !isRefreshing) {
                      refreshRecipes();
                    }
                    return true;
                  },
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.all(16),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Column(
                                children: [
                                  RecipeTile(
                                    data: featuredRecipe[index],
                                  ),
                                  if (index < featuredRecipe.length - 1)
                                    const SizedBox(height: 16),
                                ],
                              );
                            },
                            childCount: featuredRecipe.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (isRefreshing)
            Container(
              color: Colors.black.withOpacity(0.3),
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
    _scrollController.dispose();
    super.dispose();
  }
}