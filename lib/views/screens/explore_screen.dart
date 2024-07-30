import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/core/recipe.dart';
import '../../models/helper/recipe_helper.dart';
import '../../views/screens/search_screen.dart';
import '../../views/utils/app_colors.dart';
import '../../views/widgets/category_card.dart';
import '../../views/widgets/popular_recipe_card.dart';
import '../../views/widgets/recommendation_recipe_card.dart';

class ExploreScreen extends StatelessWidget {
  final List<Recipe> popularRecipes = RecipeHelper.popularRecipes;

  final List<Recipe> sweetFoodRecommendationRecipe =
      RecipeHelper.sweetFoodRecommendationRecipe;

  ExploreScreen({super.key});

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
        title: const Text('Explore Recipe',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchScreen()));
            },
            icon: SvgPicture.asset('assets/icons/search.svg',
                color: Colors.white),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        controller: scrollController,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // Section 1 - Category
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: MediaQuery.of(context).size.width,
            height: 245,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoryCard(
                    title: 'Healthy',
                    image: AssetImage('assets/images/healthy.jpg')),
                CategoryCard(
                    title: 'Drink',
                    image: AssetImage('assets/images/drink.jpg')),
                CategoryCard(
                    title: 'Seafood',
                    image: AssetImage('assets/images/seafood.jpg')),
                CategoryCard(
                    title: 'Desert',
                    image: AssetImage('assets/images/desert.jpg')),
                CategoryCard(
                    title: 'Spicy',
                    image: AssetImage('assets/images/spicy.jpg')),
                CategoryCard(
                    title: 'Meat',
                    image: AssetImage('assets/images/meat.jpg')),
              ],
            ),
          ),
          // Section 2 - Popular Card
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: PopularRecipeCard(
              data: popularRecipes,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'Delightful treats to brighten your day!',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // Content
              SizedBox(
                height: 174,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: sweetFoodRecommendationRecipe.length,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return RecommendationRecipeCard(
                      data: sweetFoodRecommendationRecipe[index],
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
