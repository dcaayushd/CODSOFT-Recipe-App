import 'package:flutter/material.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/popular_recipe_card.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

class DeliciousTodayScreen extends StatefulWidget {
  @override
  _DeliciousTodayScreenState createState() => _DeliciousTodayScreenState();
}

class _DeliciousTodayScreenState extends State<DeliciousTodayScreen> {
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
    await Future.delayed(Duration(seconds: 2));
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
        title: Text('Delicious Today',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
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
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                height: 210,
                padding: EdgeInsets.only(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: PopularRecipeCard(data: popularRecipes),
              ),
              Expanded(
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.all(16),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Column(
                              children: [
                                RecipeTile(
                                  data: featuredRecipe[index],
                                ),
                                if (index < featuredRecipe.length - 1)
                                  SizedBox(height: 16),
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
