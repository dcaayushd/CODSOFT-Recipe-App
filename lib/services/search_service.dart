import '../models/core/recipe.dart';
import '../models/helper/recipe_helper.dart';

class SearchService {
  static List<String> popularRecipeKeyword = [
    'Breakfast',
    'Pizza',
    'Chicken',
    'Dessert',
    'Eggs',
    'Vegetarian',
    'Healthy',
    'Dinner',
    'Lunch',
  ];

  static List<Recipe> getAllUniqueRecipes() {
    Set<String> uniqueTitles = {};
    List<Recipe> allUniqueRecipes = [];

    void addUniqueRecipes(List<Recipe> recipeList) {
      for (var recipe in recipeList) {
        if (!uniqueTitles.contains(recipe.title)) {
          uniqueTitles.add(recipe.title);
          allUniqueRecipes.add(recipe);
        }
      }
    }

    addUniqueRecipes(RecipeHelper.featuredRecipe);
    addUniqueRecipes(RecipeHelper.recommendationRecipe);
    addUniqueRecipes(RecipeHelper.newlyPostedRecipe);
    addUniqueRecipes(RecipeHelper.sweetFoodRecommendationRecipe);
    addUniqueRecipes(RecipeHelper.popularRecipes);
    addUniqueRecipes(RecipeHelper.searchResultRecipe);
    addUniqueRecipes(RecipeHelper.bookmarkedRecipe);

    return allUniqueRecipes;
  }

  static List<Recipe> searchRecipes(
      String query, String sortBy, String? selectedCategory) {
    List<Recipe> allRecipes = getAllUniqueRecipes();
    return _filterAndSortRecipes(allRecipes, query, sortBy, selectedCategory);
  }

  static List<Recipe> _filterAndSortRecipes(List<Recipe> recipes, String query,
      String sortBy, String? selectedCategory) {
    List<Recipe> filteredRecipes = recipes.where((recipe) {
      bool matchesQuery = query.isEmpty ||
          recipe.title.toLowerCase().contains(query.toLowerCase()) ||
          recipe.ingredients.any((ingredient) =>
              ingredient.name.toLowerCase().contains(query.toLowerCase())) ||
          recipe.categories.any((category) =>
              category.toLowerCase().contains(query.toLowerCase())) ||
          recipe.description.toLowerCase().contains(query.toLowerCase());

      bool matchesCategory = selectedCategory == null ||
          recipe.categories.any((category) =>
              category.toLowerCase() == selectedCategory.toLowerCase());

      return matchesQuery && matchesCategory;
    }).toList();

    switch (sortBy) {
      case 'Newest':
        filteredRecipes.sort((a, b) => b.createdAt.compareTo(a.createdAt));
        break;
      case 'Oldest':
        filteredRecipes.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        break;
      case 'Popular':
        filteredRecipes
            .sort((b, a) => a.reviews.length.compareTo(b.reviews.length));
        break;
      default:
        // 'All' or any other case, no sorting needed
        break;
    }

    return filteredRecipes;
  }
}
