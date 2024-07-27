import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipo/models/core/recipe.dart';
import 'package:recipo/models/helper/recipe_helper.dart';
import 'package:recipo/views/utils/AppColor.dart';
import 'package:recipo/views/widgets/recipe_tile.dart';

class NewlyPostedScreen extends StatefulWidget {
  @override
  _NewlyPostedScreenState createState() => _NewlyPostedScreenState();
}

class _NewlyPostedScreenState extends State<NewlyPostedScreen> {
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
    await Future.delayed(Duration(seconds: 1));
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
    await Future.delayed(Duration(seconds: 2));
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
        title: Text('Newly Posted',
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
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          ListView.separated(
            controller: _scrollController,
            padding: EdgeInsets.all(16),
            itemCount: newlyPostedRecipe.length,
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return SizedBox(height: 16);
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
