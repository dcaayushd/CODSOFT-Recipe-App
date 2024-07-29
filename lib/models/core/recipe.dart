class Recipe {
  String title;
  String photo;
  String calories;
  String time;
  String description;
  List<Ingredient> ingredients;
  List<TutorialStep> tutorial;
  List<Review> reviews;
  final DateTime createdAt;
  List<String> categories;

  Recipe({
    required this.title,
    required this.photo,
    required this.calories,
    required this.time,
    required this.description,
    required this.ingredients,
    required this.tutorial,
    required this.reviews,
    required this.createdAt,
    required this.categories,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'] as String? ?? '',
      photo: json['photo'] as String? ?? '',
      calories: json['calories'] as String? ?? '',
      time: json['time'] as String? ?? '',
      description: json['description'] as String? ?? '',
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tutorial: (json['tutorial'] as List<dynamic>?)
              ?.map((e) => TutorialStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(
          json['createdAt'] as String? ?? DateTime.now().toIso8601String()),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'photo': photo,
      'calories': calories,
      'time': time,
      'description': description,
      'ingredients': ingredients.map((i) => i.toMap()).toList(),
      'tutorial': tutorial.map((t) => t.toMap()).toList(),
      'reviews': reviews.map((r) => r.toMap()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'categories': categories,
    };
  }
}

class Review {
  String username;
  String review;

  Review({required this.username, required this.review});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      username: json['username'] as String? ?? '',
      review: json['review'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'review': review,
    };
  }

  static List<Review> toList(List<dynamic> json) {
    return json.map((e) => Review.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class TutorialStep {
  String step;
  String description;

  TutorialStep({required this.step, required this.description});

  factory TutorialStep.fromJson(Map<String, dynamic> json) {
    return TutorialStep(
      step: json['step'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'step': step,
      'description': description,
    };
  }

  static List<TutorialStep> toList(List<dynamic> json) {
    return json
        .map((e) => TutorialStep.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

class Ingredient {
  String name;
  String size;

  Ingredient({required this.name, required this.size});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'] as String? ?? '',
      size: json['size'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'size': size,
    };
  }

  static List<Ingredient> toList(List<dynamic> json) {
    return json
        .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
