import '../models/core/recipe.dart';
import '../models/helper/recipe_helper.dart';

class SearchService {
  static List<String> popularRecipeKeyword = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Healthy',
    'Quick',
    'Vegetarian',
    'Dessert',
  ];

  static List<Recipe> searchRecipes(
      String query, String sortBy, bool isBookmarksScreen) {
    List<Recipe> allRecipes = isBookmarksScreen
        ? RecipeHelper.bookmarkedRecipe
        : RecipeHelper.searchResultRecipe;
    return _filterAndSortRecipes(allRecipes, query, sortBy);
  }

  static List<Recipe> searchBookmarkedRecipes(
      String query, String sortBy, List<Recipe> bookmarkedRecipes) {
    return _filterAndSortRecipes(bookmarkedRecipes, query, sortBy);
  }

  static List<Recipe> _filterAndSortRecipes(
      List<Recipe> recipes, String query, String sortBy) {
    List<Recipe> filteredRecipes = recipes.where((recipe) {
      return recipe.title.toLowerCase().contains(query.toLowerCase());
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
            .sort((a, b) => b.reviews.length.compareTo(a.reviews.length));
        break;
      default:
        // 'All' or any other case, no sorting needed
        break;
    }

    return filteredRecipes;
  }
}
