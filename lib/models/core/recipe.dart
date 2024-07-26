class Recipe {
  String title;
  String photo;
  String calories;
  String time;
  String description;
  List<Ingredient> ingredients;
  List<TutorialStep> tutorial;
  List<Review> reviews;

  Recipe({
    required this.title,
    required this.photo,
    required this.calories,
    required this.time,
    required this.description,
    required this.ingredients,
    required this.tutorial,
    required this.reviews,
  });

  factory Recipe.fromJson(Map<String, Object?> json) {
    return Recipe(
      title: json['title'] as String,
      photo: json['photo'] as String,
      calories: json['calories'] as String,
      time: json['time'] as String,
      description: json['description'] as String,
      ingredients: Ingredient.toList(json['ingredients'] as List<Map<String, Object?>>),
      tutorial: TutorialStep.toList(json['tutorial'] as List<Map<String, Object?>>),
      reviews: Review.toList(json['reviews'] as List<Map<String, Object?>>),
    );
  }
}

class TutorialStep {
  String step;
  String description;

  TutorialStep({
    required this.step,
    required this.description,
  });

  Map<String, Object?> toMap() {
    return {
      'step': step,
      'description': description,
    };
  }

  factory TutorialStep.fromJson(Map<String, Object?> json) {
    return TutorialStep(
      step: json['step'] as String,
      description: json['description'] as String,
    );
  }

  static List<TutorialStep> toList(List<Map<String, Object?>> json) {
    return List.from(json)
        .map((e) => TutorialStep(step: e['step'] as String, description: e['description'] as String))
        .toList();
  }
}

class Review {
  String username;
  String review;

  Review({
    required this.username,
    required this.review,
  });

  factory Review.fromJson(Map<String, Object?> json) {
    return Review(
      username: json['username'] as String,
      review: json['review'] as String,
    );
  }

  Map<String, Object?> toMap() {
    return {
      'username': username,
      'review': review,
    };
  }

  static List<Review> toList(List<Map<String, Object?>> json) {
    return List.from(json)
        .map((e) => Review(username: e['username'] as String, review: e['review'] as String))
        .toList();
  }
}

class Ingredient {
  String name;
  String size;

  Ingredient({
    required this.name,
    required this.size,
  });

  factory Ingredient.fromJson(Map<String, Object?> json) {
    return Ingredient(
      name: json['name'] as String,
      size: json['size'] as String,
    );
  }

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'size': size,
    };
  }

  static List<Ingredient> toList(List<Map<String, Object?>> json) {
    return List.from(json)
        .map((e) => Ingredient(name: e['name'] as String, size: e['size'] as String))
        .toList();
  }
}
