class RecipeModel {
  late String appLabel;
  late String appImgUrl;
  late double appCalories;
  late String appUrl;
  late List<Ingredient> ingredients;

  RecipeModel({
    this.appLabel = "LABEL",
    this.appCalories = 0.000,
    this.appImgUrl = "IMAGE",
    this.appUrl = "URL",
    this.ingredients = const [],
  });

  factory RecipeModel.fromMap(Map recipe) {
    List<Ingredient> ingredientsList = (recipe["ingredients"] as List)
        .map((ingredient) => Ingredient.fromMap(ingredient))
        .toList();

    return RecipeModel(
      appLabel: recipe["label"],
      appCalories: recipe["calories"],
      appImgUrl: recipe["image"],
      appUrl: recipe["url"],
      ingredients: ingredientsList,
    );
  }
}

class Ingredient {
  final String text;
  final double weight;

  Ingredient({required this.text, required this.weight});

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      text: map['text'],
      weight: map['weight'].toDouble(),
    );
  }
}