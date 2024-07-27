import 'package:flutter/material.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/popular_recipe_card.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

class DeliciousTodayScreen extends StatelessWidget {
  final Recipe popularRecipe = RecipeHelper.popularRecipe;
  final List<Recipe> featuredRecipe = RecipeHelper.featuredRecipe;

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
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Popular Recipe
          Container(
            color: AppColor.primary,
            alignment: Alignment.topCenter,
            height: 210,
            padding: EdgeInsets.all(16),
            child: PopularRecipeCard(data: popularRecipe),
          ),
          // Section 2 - Bookmarked Recipe
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: featuredRecipe.length,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                return RecipeTile(
                  data: featuredRecipe[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
