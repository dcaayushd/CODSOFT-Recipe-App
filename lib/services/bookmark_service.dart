import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:async';
import 'package:recipo/models/core/recipe.dart';

class BookmarkService {
  static const String _bookmarksKey = 'bookmarkedRecipes';
  static final _bookmarksController =
      StreamController<List<Recipe>>.broadcast();
  static Stream<List<Recipe>> get bookmarksStream =>
      _bookmarksController.stream;

  static Future<List<Recipe>> getBookmarkedRecipes() async {
    final prefs = await SharedPreferences.getInstance();
    final String? bookmarksJson = prefs.getString(_bookmarksKey);
    if (bookmarksJson == null) return [];
    List<dynamic> bookmarksList = json.decode(bookmarksJson);
    List<Recipe> recipes =
        bookmarksList.map((item) => Recipe.fromJson(item)).toList();
    _bookmarksController.add(recipes); 
    return recipes;
  }

  static Future<void> toggleBookmark(Recipe recipe) async {
    final prefs = await SharedPreferences.getInstance();
    List<Recipe> bookmarks = await getBookmarkedRecipes();
    int index = bookmarks.indexWhere((item) => item.title == recipe.title);
    if (index != -1) {
      bookmarks.removeAt(index);
    } else {
      bookmarks.add(recipe);
    }
    String bookmarksJson =
        json.encode(bookmarks.map((e) => e.toJson()).toList());
    await prefs.setString(_bookmarksKey, bookmarksJson);
    _bookmarksController.add(bookmarks);
  }

  static Future<bool> isBookmarked(String recipeId) async {
    List<Recipe> bookmarks = await getBookmarkedRecipes();
    return bookmarks.any((recipe) => recipe.title == recipeId);
  }

  static List<Recipe> searchBookmarkedRecipes(
      List<Recipe> bookmarks, String query) {
    query = query.toLowerCase();
    return bookmarks
        .where((recipe) =>
            recipe.title.toLowerCase().contains(query) ||
            recipe.ingredients.any((ingredient) =>
                ingredient.name.toLowerCase().contains(query.toLowerCase())) ||
            recipe.categories.any((category) =>
                category.toLowerCase().contains(query.toLowerCase())) ||
            recipe.description.toLowerCase().contains(query))
        .toList();
  }

  static void dispose() {
    _bookmarksController.close();
  }
}
