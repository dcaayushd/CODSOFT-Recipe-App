class RecipeModel {
  late String appLabel;
  late String appImgUrl;
  late double appCalories;
  late String appUrl;

  RecipeModel({
    this.appLabel = "LABEL",
    this.appCalories = 0.000,
    this.appImgUrl = "IMAGE",
    this.appUrl = "URL",
  });
  factory RecipeModel.fromMap(Map recipe) {
    return RecipeModel(
        appLabel: recipe["label"],
        appCalories: recipe["calories"],
        appImgUrl: recipe["image"],
        appUrl: recipe["url"]);
  }
}
