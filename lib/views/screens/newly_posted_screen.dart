import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/core/recipe.dart';
import '../../models/helper/recipe_helper.dart';
import '../../views/utils/app_colors.dart';
import '../../views/widgets/recipe_tile.dart';

class NewlyPostedScreen extends StatefulWidget {
  const NewlyPostedScreen({super.key});

  @override
  NewlyPostedScreenState createState() => NewlyPostedScreenState();
}

class NewlyPostedScreenState extends State<NewlyPostedScreen> {
  final TextEditingController searchInputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Recipe> newlyPostedRecipe = [];
  bool isLoading = false;
  bool isRefreshing = false;

  @override
  void initState() {
    super.initState();
    isRefreshing = true;
    fetchNewlyPostedRecipes();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels < -50 && !isRefreshing) {
        refreshRecipes();
      }
    });
  }

  Future<void> fetchNewlyPostedRecipes() async {
    setState(() {
      isLoading = true;
    });

    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));
    newlyPostedRecipe = RecipeHelper.newlyPostedRecipe;

    setState(() {
      isLoading = false;
      isRefreshing = false;
    });
  }

  Future<void> refreshRecipes() async {
    setState(() {
      isRefreshing = true;
    });

    // Simulate a network request
    await Future.delayed(const Duration(seconds: 2));
    newlyPostedRecipe = RecipeHelper.newlyPostedRecipe;

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
        title: const Text(
          'Newly Posted',
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            itemCount: newlyPostedRecipe.length,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
            itemBuilder: (context, index) {
              return RecipeTile(
                data: newlyPostedRecipe[index],
              );
            },
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
}
