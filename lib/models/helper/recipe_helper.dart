import '../../models/core/recipe.dart';

class RecipeHelper {
  static List<Recipe> featuredRecipe = (featuredRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> recommendationRecipe = (recommendationRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> newlyPostedRecipe = (newlyPostedRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> sweetFoodRecommendationRecipe =
      (sweetFoodRecommendationRecipeRawData)
          .map((data) => Recipe(
                title: data['title'] as String? ?? '',
                photo: data['photo'] as String? ?? '',
                calories: data['calories'] as String? ?? '',
                time: data['time'] as String? ?? '',
                description: data['description'] as String? ?? '',
                reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
                tutorial: TutorialStep.toList(
                    data['tutorial'] as List<dynamic>? ?? []),
                ingredients: Ingredient.toList(
                    data['ingredients'] as List<dynamic>? ?? []),
                createdAt: DateTime.parse(data['createdAt'] as String? ??
                    DateTime.now().toIso8601String()),
                categories:
                    (data['categories'] as List<dynamic>?)?.cast<String>() ??
                        [],
              ))
          .toList();

  static List<Recipe> popularRecipes = popularRecipeRawData
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> searchResultRecipe = (recipeSearchResultRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> bookmarkedRecipe = (bookmarkedRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();

  static List<Recipe> drinksRecipe = (drinksRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();
  static List<Recipe> spicyRecipe = (spicyRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();
  static List<Recipe> seafoodRecipe = (seafoodRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(data['reviews'] as List<dynamic>? ?? []),
            tutorial:
                TutorialStep.toList(data['tutorial'] as List<dynamic>? ?? []),
            ingredients:
                Ingredient.toList(data['ingredients'] as List<dynamic>? ?? []),
            createdAt: DateTime.parse(data['createdAt'] as String? ??
                DateTime.now().toIso8601String()),
            categories:
                (data['categories'] as List<dynamic>?)?.cast<String>() ?? [],
          ))
      .toList();
}

var popularRecipeRawData = [
  {
    'title': 'Green Healthy Meat & Vegetable Pizza.',
    'photo': 'assets/images/popularnowpizza.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'createdAt': '2023-07-28T12:00:00Z',
    'categories': ['Pizza', 'Healthy', 'Lunch', 'Meat'],
    'description':
        'A delicious and nutritious twist on classic pizza. This green pizza features a whole wheat crust topped with pesto, lean ground turkey, and an array of colorful vegetables for a balanced and satisfying meal.',
    'ingredients': [
      {
        'name': 'Whole wheat pizza dough',
        'size': '450 g',
      },
      {
        'name': 'Pesto sauce',
        'size': '1/2 cup',
      },
      {
        'name': 'Ground turkey',
        'size': '250 g',
      },
      {
        'name': 'Bell peppers',
        'size': '2, sliced',
      },
      {
        'name': 'Baby spinach',
        'size': '2 cups',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the dough',
        'description':
            'Preheat oven to 425°F (220°C). Roll out the whole wheat pizza dough on a lightly floured surface to fit your baking sheet or pizza stone.',
      },
      {
        'step': '2. Add the sauce and meat',
        'description':
            'Spread the pesto sauce evenly over the dough. Cook the ground turkey in a pan until browned, then sprinkle it over the pesto.',
      },
      {
        'step': '3. Add vegetables',
        'description':
            'Arrange sliced bell peppers and baby spinach leaves over the meat. Feel free to add other vegetables of your choice.',
      },
      {
        'step': '4. Bake the pizza',
        'description':
            'Bake the pizza in the preheated oven for 15-20 minutes, or until the crust is golden and crispy.',
      },
      {
        'step': '5. Serve',
        'description':
            'Remove from oven, let cool for a few minutes, then slice and serve your delicious green healthy meat & vegetable pizza!',
      },
    ],
    'reviews': [
      {
        'username': '@pizzalover',
        'review':
            'Never thought a healthy pizza could taste this good! The pesto and turkey combo is a winner.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros and tastes amazing. I added some red onions for extra flavor and it was perfect!',
      },
      {
        'username': '@healthymom',
        'review':
            'My kids loved this pizza! It\'s a great way to sneak in more veggies into their diet.',
      },
      {
        'username': '@gymrat',
        'review':
            'Awesome post-workout meal. High in protein and complex carbs. Will definitely make again!',
      },
      {
        'username': '@felis32',
        'review':
            'Awesome meal. High in protein and complex carbs. Definitely try guys!',
      },
    ],
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Dessert', 'Eggs'],
    'description':
        'Decadent chocolate pancakes that are a chocolate lover\'s dream breakfast. These rich, fluffy pancakes are infused with cocoa for a luxurious twist on the classic pancake, perfect for special occasions or when you need a chocolatey treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Unsweetened cocoa powder',
        'size': '1/4 cup',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Chocolate chips',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Mix dry ingredients',
        'description':
            'In a large bowl, whisk together flour, cocoa powder, sugar, baking powder, and a pinch of salt.',
      },
      {
        'step': '2. Combine wet ingredients',
        'description':
            'In another bowl, mix milk, eggs, melted butter, and vanilla extract.',
      },
      {
        'step': '3. Make the batter',
        'description':
            'Pour the wet ingredients into the dry and mix until just combined. Fold in chocolate chips.',
      },
      {
        'step': '4. Cook the pancakes',
        'description':
            'Heat a non-stick skillet over medium heat. Pour 1/4 cup of batter for each pancake. Cook until bubbles form, then flip and cook the other side.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the chocolate pancakes on plates. Serve with additional chocolate chips, whipped cream, or maple syrup as desired.',
      },
    ],
    'reviews': [
      {
        'username': '@chocoholic',
        'review':
            'These are a chocolate lover\'s dream! So rich and decadent. Perfect for satisfying my sweet tooth.',
      },
      {
        'username': '@breakfastqueen',
        'review':
            'Made these for a special birthday breakfast and they were a hit! Felt like eating dessert for breakfast.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'A bit indulgent but worth it for a treat. I added some sliced bananas on top for balance.',
      },
      {
        'username': '@brunchclub',
        'review':
            'These were the star of our brunch party. Everyone was impressed and asked for the recipe!',
      },
      {
        'username': '@cels32',
        'review': 'Awesome !! Definitely try guys!',
      },
    ]
  },
  {
    'title': 'Brown Chopstick Bowl',
    'photo': 'assets/images/recom2.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'categories': ['Meat', 'Dinner'],
    'description':
        'A hearty and nutritious Asian-inspired bowl featuring brown rice, a medley of stir-fried vegetables, and your choice of protein. This balanced meal is perfect for a satisfying lunch or dinner.',
    'ingredients': [
      {
        'name': 'Brown rice',
        'size': '1 cup',
      },
      {
        'name': 'Mixed vegetables',
        'size': '2 cups',
      },
      {
        'name': 'Tofu or chicken',
        'size': '200 g',
      },
      {
        'name': 'Soy sauce',
        'size': '2 tbsp',
      },
      {
        'name': 'Sesame oil',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the rice',
        'description':
            'Rinse the brown rice and cook it according to package instructions. This usually takes about 20-25 minutes.',
      },
      {
        'step': '2. Prepare the protein',
        'description':
            'If using tofu, press it to remove excess water and cut into cubes. If using chicken, cut it into bite-sized pieces. Season with a bit of salt and pepper.',
      },
      {
        'step': '3. Stir-fry the vegetables',
        'description':
            'Heat a wok or large pan over medium-high heat. Add a bit of oil and stir-fry your mixed vegetables until they\'re crisp-tender.',
      },
      {
        'step': '4. Cook the protein',
        'description':
            'Push the vegetables to one side of the pan and add your protein. Cook until the tofu is golden or the chicken is cooked through.',
      },
      {
        'step': '5. Combine and serve',
        'description':
            'Add the cooked brown rice to the pan. Drizzle with soy sauce and sesame oil, then toss everything together. Serve in bowls and enjoy your Brown Chopstick Bowl!',
      },
    ],
    'reviews': [
      {
        'username': '@healthyeater',
        'review':
            'Love how customizable this recipe is! I used a mix of broccoli, carrots, and snap peas. So good!',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros in this meal. I added some sriracha for an extra kick. Will definitely make again!',
      },
      {
        'username': '@busycook',
        'review':
            'Quick, easy, and delicious. This has become my go-to weeknight dinner recipe.',
      },
      {
        'username': '@veggielover',
        'review':
            'I used extra-firm tofu and it was perfect. The sesame oil really adds a nice flavor to the dish.',
      },
      {
        'username': '@felas32',
        'review': 'Awesome meal!',
      },
      {
        'username': '@geulads2345',
        'review': 'Awesome Salad! Must Try...',
      },
    ]
  },
];

var featuredRecipeRawData = [
  {
    'title': 'Green Leafy Vegetable Dish.',
    'photo': 'assets/images/featured2.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'categories': ['Vegetarian', 'Breakfast', 'Healthy'],
    'description':
        'A vibrant and nutritious dish packed with leafy greens. This recipe combines spinach, kale, and Swiss chard with a light lemon dressing for a refreshing and healthy meal.',
    'ingredients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Kale',
        'size': '200 g',
      },
      {
        'name': 'Swiss chard',
        'size': '200 g',
      },
      {
        'name': 'Lemon',
        'size': '1',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Wash the greens',
        'description':
            'Thoroughly rinse all the leafy greens under cold water to remove any dirt or debris. Pat dry with a clean kitchen towel or use a salad spinner.',
      },
      {
        'step': '2. Chop the greens',
        'description':
            'Remove any tough stems from the kale and Swiss chard. Roughly chop all the greens into bite-sized pieces.',
      },
      {
        'step': '3. Prepare the dressing',
        'description':
            'In a small bowl, whisk together the juice of one lemon with 2 tablespoons of olive oil. Add salt and pepper to taste.',
      },
      {
        'step': '4. Combine and toss',
        'description':
            'In a large bowl, combine all the chopped greens. Pour the dressing over the greens and toss well to ensure even coating.',
      },
      {
        'step': '5. Serve',
        'description':
            'Let the salad sit for about 5 minutes to allow the greens to slightly wilt and absorb the dressing. Serve immediately and enjoy your nutritious green leafy vegetable dish!',
      },
    ],
    'reviews': [
      {
        'username': '@healthnut23',
        'review':
            'Loved this recipe! So simple yet so flavorful. I added some toasted pine nuts for extra crunch.',
      },
      {
        'username': '@veggielover',
        'review':
            'Great way to use up leftover greens. The lemon dressing really brightens up the flavors.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Perfect light lunch option. I added some grilled chicken to make it more filling.',
      },
      {
        'username': '@newbiecook',
        'review':
            'Easy to follow recipe. It was my first time cooking with Swiss chard and it turned out great!',
      },
    ]
  },
  {
    'title': 'Noodles With Vegetable in Bowl.',
    'photo': 'assets/images/featured1.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Vegetarian', 'Breakfast', 'Dinner'],
    'description':
        'A comforting bowl of whole grain noodles tossed with a colorful medley of stir-fried vegetables. This dish is both satisfying and nutritious, perfect for a quick weeknight dinner.',
    'ingredients': [
      {
        'name': 'Whole grain noodles',
        'size': '250 g',
      },
      {
        'name': 'Mixed vegetables',
        'size': '500 g',
      },
      {
        'name': 'Soy sauce',
        'size': '3 tbsp',
      },
      {
        'name': 'Sesame oil',
        'size': '1 tbsp',
      },
      {
        'name': 'Garlic',
        'size': '3 cloves',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the noodles',
        'description':
            'Bring a large pot of water to boil. Cook the whole grain noodles according to package instructions. Drain and set aside.',
      },
      {
        'step': '2. Prepare vegetables',
        'description':
            'Wash and chop your choice of vegetables into bite-sized pieces. Common choices include bell peppers, carrots, broccoli, and snap peas.',
      },
      {
        'step': '3. Stir-fry vegetables',
        'description':
            'Heat a wok or large skillet over medium-high heat. Add oil and minced garlic, then stir-fry the vegetables until crisp-tender.',
      },
      {
        'step': '4. Combine noodles and vegetables',
        'description':
            'Add the cooked noodles to the vegetables in the wok. Pour in soy sauce and drizzle with sesame oil. Toss everything together until well combined and heated through.',
      },
      {
        'step': '5. Serve',
        'description':
            'Transfer the noodles and vegetables to serving bowls. Garnish with sesame seeds or chopped green onions if desired. Enjoy your delicious and healthy noodle bowl!',
      },
    ],
    'reviews': [
      {
        'username': '@noodlefanatic',
        'review':
            'Such a versatile recipe! I love how I can use whatever veggies I have on hand. The sauce is simple but tasty.',
      },
      {
        'username': '@busymom',
        'review':
            'Quick, easy, and my kids actually eat their vegetables! This has become a weekly staple in our house.',
      },
      {
        'username': '@healthyeats',
        'review':
            'Great balance of carbs and veggies. I added some tofu for extra protein and it was delicious!',
      },
      {
        'username': '@cookingbeginner',
        'review':
            'This was so easy to make and turned out great. Perfect for someone just learning to cook like me!',
      },
    ]
  },
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'categories': ['Healthy', 'Lunch', 'Dinner', 'Eggs'],
    'description':
        'A nutritious twist on the classic green eggs and ham. This dish features a vibrant spinach and herb omelette, packed with vegetables and topped with avocado for a healthy and satisfying breakfast or brunch option.',
    'ingredients': [
      {
        'name': 'Eggs',
        'size': '3',
      },
      {
        'name': 'Spinach',
        'size': '100 g',
      },
      {
        'name': 'Mixed herbs',
        'size': '2 tbsp',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the egg mixture',
        'description':
            'In a blender, combine eggs, spinach, and mixed herbs. Blend until smooth and the mixture is bright green.',
      },
      {
        'step': '2. Cook the omelette',
        'description':
            'Heat a non-stick pan over medium heat. Pour in the green egg mixture and cook until the edges start to set.',
      },
      {
        'step': '3. Add fillings',
        'description':
            'Add your choice of additional vegetables to one half of the omelette. Fold the other half over the fillings.',
      },
      {
        'step': '4. Finish cooking',
        'description':
            'Continue cooking until the omelette is set and lightly golden on the outside.',
      },
      {
        'step': '5. Serve',
        'description':
            'Slide the omelette onto a plate. Top with sliced avocado and halved cherry tomatoes. Enjoy your healthy vege green egg!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'Such a fun and tasty way to start the day! The kids were intrigued by the green color and actually ate it all!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'Great macros and so filling. This keeps me satisfied until lunch. Love the extra veggies!',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Made this for weekend brunch and it was a hit! The herb flavor really comes through. Will definitely make again.',
      },
      {
        'username': '@healthyeater',
        'review':
            'Love how this packs in so many nutrients. The avocado on top is a perfect creamy addition.',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Vegetarian', 'Breakfast'],
    'description':
        'A gourmet salad that\'s both nutritious and satisfying. This colorful dish combines fresh greens, roasted vegetables, nuts, and a tangy vinaigrette for a perfect balance of flavors and textures.',
    'ingredients': [
      {
        'name': 'Mixed salad greens',
        'size': '200 g',
      },
      {
        'name': 'Roasted vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Goat cheese',
        'size': '50 g',
      },
      {
        'name': 'Walnuts',
        'size': '1/4 cup',
      },
      {
        'name': 'Balsamic vinaigrette',
        'size': '3 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the greens',
        'description':
            'Wash and dry the mixed salad greens. Place them in a large salad bowl.',
      },
      {
        'step': '2. Roast the vegetables',
        'description':
            'Preheat oven to 400°F (200°C). Toss your choice of vegetables (such as bell peppers, zucchini, and carrots) with olive oil and roast for 20-25 minutes.',
      },
      {
        'step': '3. Toast the nuts',
        'description':
            'In a dry skillet over medium heat, toast the walnuts until fragrant, about 5 minutes. Let cool and roughly chop.',
      },
      {
        'step': '4. Assemble the salad',
        'description':
            'Add the roasted vegetables and toasted walnuts to the greens. Crumble the goat cheese over the top.',
      },
      {
        'step': '5. Dress and serve',
        'description':
            'Drizzle the balsamic vinaigrette over the salad. Toss gently to combine all ingredients. Serve immediately and enjoy Ron\'s delicious salad!',
      },
    ],
    'reviews': [
      {
        'username': '@saladking',
        'review':
            'Ron\'s done it again! This salad is the perfect mix of flavors and textures. The roasted veggies add such a nice depth.',
      },
      {
        'username': '@healthyeater',
        'review':
            'I love how filling this salad is while still being light. The goat cheese and walnuts make it feel indulgent.',
      },
      {
        'username': '@cookingnovice',
        'review':
            'Was intimidated at first but the instructions were easy to follow. Result was restaurant-quality!',
      },
      {
        'username': '@gourmetgal',
        'review':
            'The balance of flavors in this salad is perfect. I added some grilled chicken to make it a full meal.',
      },
      {
        'username': '@geulads2345',
        'review': 'Awesome Salad! Must Try...',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Breakfast', 'Eggs', 'Healthy'],
    'description':
        'A delightful and nutritious breakfast spread that caters to all tastes. This delimenu features a variety of options including whole grain toast, fresh fruits, yogurt, and a protein-packed egg white scramble.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Egg whites',
        'size': '4',
      },
      {
        'name': 'Greek yogurt',
        'size': '1/2 cup',
      },
      {
        'name': 'Mixed berries',
        'size': '1 cup',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the toast',
        'description':
            'Toast the whole grain bread slices to your desired level of crispness. Set aside.',
      },
      {
        'step': '2. Make the egg white scramble',
        'description':
            'In a non-stick pan over medium heat, scramble the egg whites until they\'re fully cooked but still soft and fluffy.',
      },
      {
        'step': '3. Arrange the fruit',
        'description':
            'Wash the mixed berries and arrange them in a small bowl or on the plate.',
      },
      {
        'step': '4. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and slice or mash the flesh as preferred.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Arrange all components on a plate: toast, egg white scramble, yogurt, berries, and avocado. Serve immediately and enjoy your balanced breakfast delimenu!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'This delimenu has everything I want in a breakfast! Protein, healthy fats, and complex carbs. Perfect start to my day.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Love the variety in this breakfast. The Greek yogurt with berries is my favorite part!',
      },
      {
        'username': '@busymom',
        'review':
            'Great for the whole family. Kids love choosing their favorites from the spread.',
      },
      {
        'username': '@healthnut',
        'review':
            'Nutritionally balanced and delicious. I added a sprinkle of chia seeds for extra omega-3s.',
      },
    ]
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Dessert', 'Eggs'],
    'description':
        'Decadent chocolate pancakes that are a chocolate lover\'s dream breakfast. These rich, fluffy pancakes are infused with cocoa for a luxurious twist on the classic pancake, perfect for special occasions or when you need a chocolatey treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Unsweetened cocoa powder',
        'size': '1/4 cup',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Chocolate chips',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Mix dry ingredients',
        'description':
            'In a large bowl, whisk together flour, cocoa powder, sugar, baking powder, and a pinch of salt.',
      },
      {
        'step': '2. Combine wet ingredients',
        'description':
            'In another bowl, mix milk, eggs, melted butter, and vanilla extract.',
      },
      {
        'step': '3. Make the batter',
        'description':
            'Pour the wet ingredients into the dry and mix until just combined. Fold in chocolate chips.',
      },
      {
        'step': '4. Cook the pancakes',
        'description':
            'Heat a non-stick skillet over medium heat. Pour 1/4 cup of batter for each pancake. Cook until bubbles form, then flip and cook the other side.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the chocolate pancakes on plates. Serve with additional chocolate chips, whipped cream, or maple syrup as desired.',
      },
    ],
    'reviews': [
      {
        'username': '@chocoholic',
        'review':
            'These are a chocolate lover\'s dream! So rich and decadent. Perfect for satisfying my sweet tooth.',
      },
      {
        'username': '@breakfastqueen',
        'review':
            'Made these for a special birthday breakfast and they were a hit! Felt like eating dessert for breakfast.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'A bit indulgent but worth it for a treat. I added some sliced bananas on top for balance.',
      },
      {
        'username': '@brunchclub',
        'review':
            'These were the star of our brunch party. Everyone was impressed and asked for the recipe!',
      },
    ]
  },
];

var recommendationRecipeRawData = [
  {
    'title': 'Brown Chopstick Bowl',
    'photo': 'assets/images/recom2.jpg',
    'calories': '1500 Cal',
    'categories': ['Meat', 'Dinner'],
    'time': '25 min',
    'description':
        'A hearty and nutritious Asian-inspired bowl featuring brown rice, a medley of stir-fried vegetables, and your choice of protein. This balanced meal is perfect for a satisfying lunch or dinner.',
    'ingredients': [
      {
        'name': 'Brown rice',
        'size': '1 cup',
      },
      {
        'name': 'Mixed vegetables',
        'size': '2 cups',
      },
      {
        'name': 'Tofu or chicken',
        'size': '200 g',
      },
      {
        'name': 'Soy sauce',
        'size': '2 tbsp',
      },
      {
        'name': 'Sesame oil',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the rice',
        'description':
            'Rinse the brown rice and cook it according to package instructions. This usually takes about 20-25 minutes.',
      },
      {
        'step': '2. Prepare the protein',
        'description':
            'If using tofu, press it to remove excess water and cut into cubes. If using chicken, cut it into bite-sized pieces. Season with a bit of salt and pepper.',
      },
      {
        'step': '3. Stir-fry the vegetables',
        'description':
            'Heat a wok or large pan over medium-high heat. Add a bit of oil and stir-fry your mixed vegetables until they\'re crisp-tender.',
      },
      {
        'step': '4. Cook the protein',
        'description':
            'Push the vegetables to one side of the pan and add your protein. Cook until the tofu is golden or the chicken is cooked through.',
      },
      {
        'step': '5. Combine and serve',
        'description':
            'Add the cooked brown rice to the pan. Drizzle with soy sauce and sesame oil, then toss everything together. Serve in bowls and enjoy your Brown Chopstick Bowl!',
      },
    ],
    'reviews': [
      {
        'username': '@healthyeater',
        'review':
            'Love how customizable this recipe is! I used a mix of broccoli, carrots, and snap peas. So good!',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros in this meal. I added some sriracha for an extra kick. Will definitely make again!',
      },
      {
        'username': '@busycook',
        'review':
            'Quick, easy, and delicious. This has become my go-to weeknight dinner recipe.',
      },
      {
        'username': '@veggielover',
        'review':
            'I used extra-firm tofu and it was perfect. The sesame oil really adds a nice flavor to the dish.',
      },
    ]
  },
  {
    'title': 'Delicious Salad with Egg',
    'photo': 'assets/images/recom1.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Eggs', 'Breakfast'],
    'description':
        'A vibrant and protein-packed salad featuring crisp mixed greens, colorful vegetables, and topped with a perfectly cooked egg. This salad is a delightful combination of flavors and textures, making it a satisfying meal any time of day.',
    'ingredients': [
      {
        'name': 'Mixed salad greens',
        'size': '4 cups',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1 cup',
      },
      {
        'name': 'Cucumber',
        'size': '1 medium',
      },
      {
        'name': 'Avocado',
        'size': '1',
      },
      {
        'name': 'Eggs',
        'size': '2',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the vegetables',
        'description':
            'Wash and dry the mixed greens. Halve the cherry tomatoes, slice the cucumber, and cut the avocado into chunks.',
      },
      {
        'step': '2. Cook the eggs',
        'description':
            'Bring a pot of water to a boil. Gently lower the eggs into the water and cook for 6-7 minutes for soft-boiled eggs. Immediately transfer to an ice bath when done.',
      },
      {
        'step': '3. Assemble the salad',
        'description':
            'In a large bowl, combine the mixed greens, cherry tomatoes, cucumber, and avocado.',
      },
      {
        'step': '4. Prepare the dressing',
        'description':
            'In a small bowl, whisk together olive oil, lemon juice, Dijon mustard, salt, and pepper to make a simple vinaigrette.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Peel the eggs and cut them in half. Drizzle the salad with the prepared dressing, top with the halved eggs, and serve your Delicious Salad with Egg immediately.',
      },
    ],
    'reviews': [
      {
        'username': '@saladqueen',
        'review':
            'This salad is a game-changer! The soft-boiled egg adds such a nice richness. I added some croutons for extra crunch.',
      },
      {
        'username': '@healthnut',
        'review':
            'Perfect light dinner option. I love how the creamy avocado contrasts with the crisp vegetables.',
      },
      {
        'username': '@cookingnovice',
        'review':
            'First time making soft-boiled eggs and they turned out great thanks to the clear instructions. Delicious!',
      },
      {
        'username': '@lunchboxhero',
        'review':
            'I prep this salad for my work lunches (keeping the egg separate until ready to eat). It\'s so fresh and satisfying!',
      },
    ]
  },
];

var newlyPostedRecipeRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'categories': ['Eggs', 'Breakfast', 'Healthy'],
    'description':
        'A nutritious twist on the classic green eggs and ham. This dish features a vibrant spinach and herb omelette, packed with vegetables and topped with avocado for a healthy and satisfying breakfast or brunch option.',
    'ingredients': [
      {
        'name': 'Eggs',
        'size': '3',
      },
      {
        'name': 'Spinach',
        'size': '100 g',
      },
      {
        'name': 'Mixed herbs',
        'size': '2 tbsp',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the egg mixture',
        'description':
            'In a blender, combine eggs, spinach, and mixed herbs. Blend until smooth and the mixture is bright green.',
      },
      {
        'step': '2. Cook the omelette',
        'description':
            'Heat a non-stick pan over medium heat. Pour in the green egg mixture and cook until the edges start to set.',
      },
      {
        'step': '3. Add fillings',
        'description':
            'Add your choice of additional vegetables to one half of the omelette. Fold the other half over the fillings.',
      },
      {
        'step': '4. Finish cooking',
        'description':
            'Continue cooking until the omelette is set and lightly golden on the outside.',
      },
      {
        'step': '5. Serve',
        'description':
            'Slide the omelette onto a plate. Top with sliced avocado and halved cherry tomatoes. Enjoy your healthy vege green egg!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'Such a fun and tasty way to start the day! The kids were intrigued by the green color and actually ate it all!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'Great macros and so filling. This keeps me satisfied until lunch. Love the extra veggies!',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Made this for weekend brunch and it was a hit! The herb flavor really comes through. Will definitely make again.',
      },
      {
        'username': '@healthyeater',
        'review':
            'Love how this packs in so many nutrients. The avocado on top is a perfect creamy addition.',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description':
        'A gourmet salad that\'s both nutritious and satisfying. This colorful dish combines fresh greens, roasted vegetables, nuts, and a tangy vinaigrette for a perfect balance of flavors and textures.',
    'ingredients': [
      {
        'name': 'Mixed salad greens',
        'size': '200 g',
      },
      {
        'name': 'Roasted vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Goat cheese',
        'size': '50 g',
      },
      {
        'name': 'Walnuts',
        'size': '1/4 cup',
      },
      {
        'name': 'Balsamic vinaigrette',
        'size': '3 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the greens',
        'description':
            'Wash and dry the mixed salad greens. Place them in a large salad bowl.',
      },
      {
        'step': '2. Roast the vegetables',
        'description':
            'Preheat oven to 400°F (200°C). Toss your choice of vegetables (such as bell peppers, zucchini, and carrots) with olive oil and roast for 20-25 minutes.',
      },
      {
        'step': '3. Toast the nuts',
        'description':
            'In a dry skillet over medium heat, toast the walnuts until fragrant, about 5 minutes. Let cool and roughly chop.',
      },
      {
        'step': '4. Assemble the salad',
        'description':
            'Add the roasted vegetables and toasted walnuts to the greens. Crumble the goat cheese over the top.',
      },
      {
        'step': '5. Dress and serve',
        'description':
            'Drizzle the balsamic vinaigrette over the salad. Toss gently to combine all ingredients. Serve immediately and enjoy Ron\'s delicious salad!',
      },
    ],
    'reviews': [
      {
        'username': '@saladking',
        'review':
            'Ron\'s done it again! This salad is the perfect mix of flavors and textures. The roasted veggies add such a nice depth.',
      },
      {
        'username': '@healthyeater',
        'review':
            'I love how filling this salad is while still being light. The goat cheese and walnuts make it feel indulgent.',
      },
      {
        'username': '@cookingnovice',
        'review':
            'Was intimidated at first but the instructions were easy to follow. Result was restaurant-quality!',
      },
      {
        'username': '@gourmetgal',
        'review':
            'The balance of flavors in this salad is perfect. I added some grilled chicken to make it a full meal.',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Breakfast', 'Eggs'],
    'description':
        'A delightful and nutritious breakfast spread that caters to all tastes. This delimenu features a variety of options including whole grain toast, fresh fruits, yogurt, and a protein-packed egg white scramble.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Egg whites',
        'size': '4',
      },
      {
        'name': 'Greek yogurt',
        'size': '1/2 cup',
      },
      {
        'name': 'Mixed berries',
        'size': '1 cup',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the toast',
        'description':
            'Toast the whole grain bread slices to your desired level of crispness. Set aside.',
      },
      {
        'step': '2. Make the egg white scramble',
        'description':
            'In a non-stick pan over medium heat, scramble the egg whites until they\'re fully cooked but still soft and fluffy.',
      },
      {
        'step': '3. Arrange the fruit',
        'description':
            'Wash the mixed berries and arrange them in a small bowl or on the plate.',
      },
      {
        'step': '4. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and slice or mash the flesh as preferred.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Arrange all components on a plate: toast, egg white scramble, yogurt, berries, and avocado. Serve immediately and enjoy your balanced breakfast delimenu!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'This delimenu has everything I want in a breakfast! Protein, healthy fats, and complex carbs. Perfect start to my day.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Love the variety in this breakfast. The Greek yogurt with berries is my favorite part!',
      },
      {
        'username': '@busymom',
        'review':
            'Great for the whole family. Kids love choosing their favorites from the spread.',
      },
      {
        'username': '@healthnut',
        'review':
            'Nutritionally balanced and delicious. I added a sprinkle of chia seeds for extra omega-3s.',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 min',
    'description':
        'A fresh and flavorful twist on avocado toast, featuring aromatic basil leaves. This open-faced sandwich combines creamy avocado, fragrant basil, and crusty bread for a delightful and nutritious meal.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Ripe avocado',
        'size': '1',
      },
      {
        'name': 'Fresh basil leaves',
        'size': '1/4 cup',
      },
      {
        'name': 'Lemon juice',
        'size': '1 tbsp',
      },
      {
        'name': 'Extra virgin olive oil',
        'size': '1 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Toast the bread',
        'description':
            'Lightly toast the whole grain bread slices until they\'re golden and crispy.',
      },
      {
        'step': '2. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and scoop the flesh into a bowl. Mash it with a fork and add lemon juice to prevent browning.',
      },
      {
        'step': '3. Chop the basil',
        'description':
            'Wash the basil leaves and chop them finely, reserving a few whole leaves for garnish.',
      },
      {
        'step': '4. Mix and spread',
        'description':
            'Mix the chopped basil into the mashed avocado. Spread this mixture evenly on the toasted bread slices.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Drizzle with olive oil, garnish with whole basil leaves, and add salt and pepper to taste. Serve immediately and enjoy your Basil Leaves & Avocado Bread!',
      },
    ],
    'reviews': [
      {
        'username': '@avocadolover',
        'review':
            'The basil adds such a lovely freshness to classic avocado toast. I\'ll be making this regularly!',
      },
      {
        'username': '@healthyfoodie',
        'review':
            'Simple yet so flavorful. I added a sprinkle of red pepper flakes for some heat.',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Perfect for a quick and easy brunch. The lemon juice really brightens up the flavors.',
      },
      {
        'username': '@nutritionguru',
        'review':
            'Great combination of healthy fats and complex carbs. I used sprouted grain bread for extra nutrition.',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 min',
    'categories': ['Healthy', 'Eggs', 'Meat'],
    'description':
        'A protein-packed dish featuring lean beef and perfectly cooked eggs. This balanced meal combines savory flavors with nutritious ingredients for a satisfying and healthy option any time of day.',
    'ingredients': [
      {
        'name': 'Lean ground beef',
        'size': '200 g',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Mixed vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '1 tbsp',
      },
      {
        'name': 'Mixed herbs',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the beef',
        'description':
            'In a skillet over medium heat, cook the lean ground beef until browned. Drain any excess fat.',
      },
      {
        'step': '2. Add vegetables',
        'description':
            'Add mixed vegetables to the skillet and cook until they\'re tender-crisp.',
      },
      {
        'step': '3. Season the mixture',
        'description':
            'Stir in mixed herbs and season with salt and pepper to taste.',
      },
      {
        'step': '4. Cook the eggs',
        'description':
            'Make two wells in the beef mixture and crack an egg into each. Cover and cook until the eggs are set to your liking.',
      },
      {
        'step': '5. Serve',
        'description':
            'Carefully transfer the beef and egg mixture to plates. Garnish with fresh herbs if desired and serve your Healthy Beef & Egg dish hot.',
      },
    ],
    'reviews': [
      {
        'username': '@proteinfanatic',
        'review':
            'Great macro balance in this meal. The eggs were perfectly cooked with runny yolks!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'I love how customizable this is. I used turkey instead of beef and it was delicious.',
      },
      {
        'username': '@busycook',
        'review':
            'Quick, easy, and nutritious. This has become a go-to weeknight dinner for me.',
      },
      {
        'username': '@lowcarblife',
        'review':
            'Perfect for my low-carb diet. I added some avocado on the side for healthy fats.',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 min',
    'categories': ['Meat', 'Dinner'],
    'description':
        'A hearty and nutritious bowl featuring a variety of meats and colorful vegetables. This well-balanced meal is perfect for meal prep or a satisfying dinner option that\'s both delicious and wholesome.',
    'ingredients': [
      {
        'name': 'Assorted meats (chicken, beef, pork)',
        'size': '300 g',
      },
      {
        'name': 'Mixed vegetables',
        'size': '2 cups',
      },
      {
        'name': 'Quinoa or brown rice',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      },
      {
        'name': 'Mixed herbs and spices',
        'size': '2 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the grains',
        'description':
            'Cook quinoa or brown rice according to package instructions. Set aside.',
      },
      {
        'step': '2. Marinate the meats',
        'description':
            'Cut meats into bite-sized pieces and marinate with herbs, spices, and a bit of olive oil for at least 30 minutes.',
      },
      {
        'step': '3. Cook the meats',
        'description':
            'In a large skillet or grill pan, cook the marinated meats until they\'re properly cooked through.',
      },
      {
        'step': '4. Prepare the vegetables',
        'description':
            'In another pan, sauté the mixed vegetables until they\'re tender-crisp.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'In bowls, layer the cooked grains, sautéed vegetables, and cooked meats. Drizzle with any remaining juices from cooking and serve your Meats and Vegetables Bowl hot.',
      },
    ],
    'reviews': [
      {
        'username': '@mealprepper',
        'review':
            'Perfect for my weekly meal prep! The variety of meats keeps it interesting throughout the week.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros and so filling. I love how customizable this bowl is with different veggies and meats.',
      },
      {
        'username': '@healthyeater',
        'review':
            'A well-balanced meal that keeps me satisfied for hours. I add some avocado for healthy fats.',
      },
      {
        'username': '@busyprofessional',
        'review':
            'Though it takes some time to prepare, it\'s worth it for multiple delicious and healthy meals.',
      },
    ]
  },
  {
    'title': 'Pancake with Honey.',
    'photo': 'assets/images/sweetfood1.jpg',
    'calories': '1500 Cal',
    'categories': ['Eggs', 'Dessert'],
    'time': '25 min',
    'description':
        'Fluffy, golden pancakes drizzled with sweet, golden honey. This classic breakfast dish is a perfect balance of comforting carbs and natural sweetness, ideal for a leisurely weekend brunch or a special breakfast treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Butter, melted',
        'size': '3 tbsp',
      },
      {
        'name': 'Honey',
        'size': '1/4 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the batter',
        'description':
            'In a large bowl, whisk together flour, baking powder, and a pinch of salt. In another bowl, combine milk, eggs, and melted butter. Mix wet ingredients into dry until just combined.',
      },
      {
        'step': '2. Heat the pan',
        'description':
            'Heat a non-stick skillet or griddle over medium heat. Lightly grease with butter or oil if needed.',
      },
      {
        'step': '3. Cook the pancakes',
        'description':
            'Pour about 1/4 cup of batter for each pancake. Cook until bubbles form on the surface, then flip and cook the other side until golden brown.',
      },
      {
        'step': '4. Keep warm',
        'description':
            'As you cook, keep finished pancakes warm in a low oven or covered with a clean kitchen towel.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the pancakes on plates, drizzle generously with honey, and serve your Pancakes with Honey immediately. Add extra honey on the side if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@sweettoothsatisfied',
        'review':
            'These pancakes are heavenly! So fluffy and the honey is the perfect natural sweetener.',
      },
      {
        'username': '@brunchmaster',
        'review':
            'A classic done right. I added some fresh berries on top for extra flavor and nutrition.',
      },
      {
        'username': '@kidapproved',
        'review':
            'My kids absolutely love these! It\'s become our Saturday morning tradition.',
      },
      {
        'username': '@healthconscious',
        'review':
            'I used whole wheat flour and they were still delicious. A little indulgence with some nutritional benefits!',
      },
    ]
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Dessert', 'Eggs'],
    'description':
        'Decadent chocolate pancakes that are a chocolate lover\'s dream breakfast. These rich, fluffy pancakes are infused with cocoa for a luxurious twist on the classic pancake, perfect for special occasions or when you need a chocolatey treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Unsweetened cocoa powder',
        'size': '1/4 cup',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Chocolate chips',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Mix dry ingredients',
        'description':
            'In a large bowl, whisk together flour, cocoa powder, sugar, baking powder, and a pinch of salt.',
      },
      {
        'step': '2. Combine wet ingredients',
        'description':
            'In another bowl, mix milk, eggs, melted butter, and vanilla extract.',
      },
      {
        'step': '3. Make the batter',
        'description':
            'Pour the wet ingredients into the dry and mix until just combined. Fold in chocolate chips.',
      },
      {
        'step': '4. Cook the pancakes',
        'description':
            'Heat a non-stick skillet over medium heat. Pour 1/4 cup of batter for each pancake. Cook until bubbles form, then flip and cook the other side.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the chocolate pancakes on plates. Serve with additional chocolate chips, whipped cream, or maple syrup as desired.',
      },
    ],
    'reviews': [
      {
        'username': '@chocoholic',
        'review':
            'These are a chocolate lover\'s dream! So rich and decadent. Perfect for satisfying my sweet tooth.',
      },
      {
        'username': '@breakfastqueen',
        'review':
            'Made these for a special birthday breakfast and they were a hit! Felt like eating dessert for breakfast.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'A bit indulgent but worth it for a treat. I added some sliced bananas on top for balance.',
      },
      {
        'username': '@brunchclub',
        'review':
            'These were the star of our brunch party. Everyone was impressed and asked for the recipe!',
      },
    ]
  },
];
var sweetFoodRecommendationRecipeRawData = [
  {
    'title': 'Pancake with Honey.',
    'photo': 'assets/images/sweetfood1.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'category': 'Dessert',
    'description':
        'Fluffy, golden pancakes drizzled with sweet, golden honey. This classic breakfast dish is a perfect balance of comforting carbs and natural sweetness, ideal for a leisurely weekend brunch or a special breakfast treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Butter, melted',
        'size': '3 tbsp',
      },
      {
        'name': 'Honey',
        'size': '1/4 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the batter',
        'description':
            'In a large bowl, whisk together flour, baking powder, and a pinch of salt. In another bowl, combine milk, eggs, and melted butter. Mix wet ingredients into dry until just combined.',
      },
      {
        'step': '2. Heat the pan',
        'description':
            'Heat a non-stick skillet or griddle over medium heat. Lightly grease with butter or oil if needed.',
      },
      {
        'step': '3. Cook the pancakes',
        'description':
            'Pour about 1/4 cup of batter for each pancake. Cook until bubbles form on the surface, then flip and cook the other side until golden brown.',
      },
      {
        'step': '4. Keep warm',
        'description':
            'As you cook, keep finished pancakes warm in a low oven or covered with a clean kitchen towel.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the pancakes on plates, drizzle generously with honey, and serve your Pancakes with Honey immediately. Add extra honey on the side if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@sweettoothsatisfied',
        'review':
            'These pancakes are heavenly! So fluffy and the honey is the perfect natural sweetener.',
      },
      {
        'username': '@brunchmaster',
        'review':
            'A classic done right. I added some fresh berries on top for extra flavor and nutrition.',
      },
      {
        'username': '@kidapproved',
        'review':
            'My kids absolutely love these! It\'s become our Saturday morning tradition.',
      },
      {
        'username': '@healthconscious',
        'review':
            'I used whole wheat flour and they were still delicious. A little indulgence with some nutritional benefits!',
      },
    ]
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'categories': ['Dessert', 'Eggs'],
    'description':
        'Decadent chocolate pancakes that are a chocolate lover\'s dream breakfast. These rich, fluffy pancakes are infused with cocoa for a luxurious twist on the classic pancake, perfect for special occasions or when you need a chocolatey treat.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '1 1/2 cups',
      },
      {
        'name': 'Unsweetened cocoa powder',
        'size': '1/4 cup',
      },
      {
        'name': 'Milk',
        'size': '1 1/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Chocolate chips',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Mix dry ingredients',
        'description':
            'In a large bowl, whisk together flour, cocoa powder, sugar, baking powder, and a pinch of salt.',
      },
      {
        'step': '2. Combine wet ingredients',
        'description':
            'In another bowl, mix milk, eggs, melted butter, and vanilla extract.',
      },
      {
        'step': '3. Make the batter',
        'description':
            'Pour the wet ingredients into the dry and mix until just combined. Fold in chocolate chips.',
      },
      {
        'step': '4. Cook the pancakes',
        'description':
            'Heat a non-stick skillet over medium heat. Pour 1/4 cup of batter for each pancake. Cook until bubbles form, then flip and cook the other side.',
      },
      {
        'step': '5. Serve',
        'description':
            'Stack the chocolate pancakes on plates. Serve with additional chocolate chips, whipped cream, or maple syrup as desired.',
      },
    ],
    'reviews': [
      {
        'username': '@chocoholic',
        'review':
            'These are a chocolate lover\'s dream! So rich and decadent. Perfect for satisfying my sweet tooth.',
      },
      {
        'username': '@breakfastqueen',
        'review':
            'Made these for a special birthday breakfast and they were a hit! Felt like eating dessert for breakfast.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'A bit indulgent but worth it for a treat. I added some sliced bananas on top for balance.',
      },
      {
        'username': '@brunchclub',
        'review':
            'These were the star of our brunch party. Everyone was impressed and asked for the recipe!',
      },
    ]
  },
];

var recipeSearchResultRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'description':
        'A nutritious twist on the classic green eggs and ham. This dish features a vibrant spinach and herb omelette, packed with vegetables and topped with avocado for a healthy and satisfying breakfast or brunch option.',
    'ingredients': [
      {
        'name': 'Eggs',
        'size': '3',
      },
      {
        'name': 'Spinach',
        'size': '100 g',
      },
      {
        'name': 'Mixed herbs',
        'size': '2 tbsp',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the egg mixture',
        'description':
            'In a blender, combine eggs, spinach, and mixed herbs. Blend until smooth and the mixture is bright green.',
      },
      {
        'step': '2. Cook the omelette',
        'description':
            'Heat a non-stick pan over medium heat. Pour in the green egg mixture and cook until the edges start to set.',
      },
      {
        'step': '3. Add fillings',
        'description':
            'Add your choice of additional vegetables to one half of the omelette. Fold the other half over the fillings.',
      },
      {
        'step': '4. Finish cooking',
        'description':
            'Continue cooking until the omelette is set and lightly golden on the outside.',
      },
      {
        'step': '5. Serve',
        'description':
            'Slide the omelette onto a plate. Top with sliced avocado and halved cherry tomatoes. Enjoy your healthy vege green egg!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'Such a fun and tasty way to start the day! The kids were intrigued by the green color and actually ate it all!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'Great macros and so filling. This keeps me satisfied until lunch. Love the extra veggies!',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Made this for weekend brunch and it was a hit! The herb flavor really comes through. Will definitely make again.',
      },
      {
        'username': '@healthyeater',
        'review':
            'Love how this packs in so many nutrients. The avocado on top is a perfect creamy addition.',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'Categories': ['Vegetarian'],
    'description':
        'A gourmet salad that\'s both nutritious and satisfying. This colorful dish combines fresh greens, roasted vegetables, nuts, and a tangy vinaigrette for a perfect balance of flavors and textures.',
    'ingredients': [
      {
        'name': 'Mixed salad greens',
        'size': '200 g',
      },
      {
        'name': 'Roasted vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Goat cheese',
        'size': '50 g',
      },
      {
        'name': 'Walnuts',
        'size': '1/4 cup',
      },
      {
        'name': 'Balsamic vinaigrette',
        'size': '3 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the greens',
        'description':
            'Wash and dry the mixed salad greens. Place them in a large salad bowl.',
      },
      {
        'step': '2. Roast the vegetables',
        'description':
            'Preheat oven to 400°F (200°C). Toss your choice of vegetables (such as bell peppers, zucchini, and carrots) with olive oil and roast for 20-25 minutes.',
      },
      {
        'step': '3. Toast the nuts',
        'description':
            'In a dry skillet over medium heat, toast the walnuts until fragrant, about 5 minutes. Let cool and roughly chop.',
      },
      {
        'step': '4. Assemble the salad',
        'description':
            'Add the roasted vegetables and toasted walnuts to the greens. Crumble the goat cheese over the top.',
      },
      {
        'step': '5. Dress and serve',
        'description':
            'Drizzle the balsamic vinaigrette over the salad. Toss gently to combine all ingredients. Serve immediately and enjoy Ron\'s delicious salad!',
      },
    ],
    'reviews': [
      {
        'username': '@saladking',
        'review':
            'Ron\'s done it again! This salad is the perfect mix of flavors and textures. The roasted veggies add such a nice depth.',
      },
      {
        'username': '@healthyeater',
        'review':
            'I love how filling this salad is while still being light. The goat cheese and walnuts make it feel indulgent.',
      },
      {
        'username': '@cookingnovice',
        'review':
            'Was intimidated at first but the instructions were easy to follow. Result was restaurant-quality!',
      },
      {
        'username': '@gourmetgal',
        'review':
            'The balance of flavors in this salad is perfect. I added some grilled chicken to make it a full meal.',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 min',
    'description':
        'A fresh and flavorful twist on avocado toast, featuring aromatic basil leaves. This open-faced sandwich combines creamy avocado, fragrant basil, and crusty bread for a delightful and nutritious meal.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Ripe avocado',
        'size': '1',
      },
      {
        'name': 'Fresh basil leaves',
        'size': '1/4 cup',
      },
      {
        'name': 'Lemon juice',
        'size': '1 tbsp',
      },
      {
        'name': 'Extra virgin olive oil',
        'size': '1 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Toast the bread',
        'description':
            'Lightly toast the whole grain bread slices until they\'re golden and crispy.',
      },
      {
        'step': '2. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and scoop the flesh into a bowl. Mash it with a fork and add lemon juice to prevent browning.',
      },
      {
        'step': '3. Chop the basil',
        'description':
            'Wash the basil leaves and chop them finely, reserving a few whole leaves for garnish.',
      },
      {
        'step': '4. Mix and spread',
        'description':
            'Mix the chopped basil into the mashed avocado. Spread this mixture evenly on the toasted bread slices.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Drizzle with olive oil, garnish with whole basil leaves, and add salt and pepper to taste. Serve immediately and enjoy your Basil Leaves & Avocado Bread!',
      },
    ],
    'reviews': [
      {
        'username': '@avocadolover',
        'review':
            'The basil adds such a lovely freshness to classic avocado toast. I\'ll be making this regularly!',
      },
      {
        'username': '@healthyfoodie',
        'review':
            'Simple yet so flavorful. I added a sprinkle of red pepper flakes for some heat.',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Perfect for a quick and easy brunch. The lemon juice really brightens up the flavors.',
      },
      {
        'username': '@nutritionguru',
        'review':
            'Great combination of healthy fats and complex carbs. I used sprouted grain bread for extra nutrition.',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 min',
    'categories': ['Meat', 'Dinner', 'Eggs'],
    'description':
        'A protein-packed dish featuring lean beef and perfectly cooked eggs. This balanced meal combines savory flavors with nutritious ingredients for a satisfying and healthy option any time of day.',
    'ingredients': [
      {
        'name': 'Lean ground beef',
        'size': '200 g',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Mixed vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '1 tbsp',
      },
      {
        'name': 'Mixed herbs',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the beef',
        'description':
            'In a skillet over medium heat, cook the lean ground beef until browned. Drain any excess fat.',
      },
      {
        'step': '2. Add vegetables',
        'description':
            'Add mixed vegetables to the skillet and cook until they\'re tender-crisp.',
      },
      {
        'step': '3. Season the mixture',
        'description':
            'Stir in mixed herbs and season with salt and pepper to taste.',
      },
      {
        'step': '4. Cook the eggs',
        'description':
            'Make two wells in the beef mixture and crack an egg into each. Cover and cook until the eggs are set to your liking.',
      },
      {
        'step': '5. Serve',
        'description':
            'Carefully transfer the beef and egg mixture to plates. Garnish with fresh herbs if desired and serve your Healthy Beef & Egg dish hot.',
      },
    ],
    'reviews': [
      {
        'username': '@proteinfanatic',
        'review':
            'Great macro balance in this meal. The eggs were perfectly cooked with runny yolks!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'I love how customizable this is. I used turkey instead of beef and it was delicious.',
      },
      {
        'username': '@busycook',
        'review':
            'Quick, easy, and nutritious. This has become a go-to weeknight dinner for me.',
      },
      {
        'username': '@lowcarblife',
        'review':
            'Perfect for my low-carb diet. I added some avocado on the side for healthy fats.',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 min',
    'description':
        'A hearty and nutritious bowl featuring a variety of meats and colorful vegetables. This well-balanced meal is perfect for meal prep or a satisfying dinner option that\'s both delicious and wholesome.',
    'ingredients': [
      {
        'name': 'Assorted meats (chicken, beef, pork)',
        'size': '300 g',
      },
      {
        'name': 'Mixed vegetables',
        'size': '2 cups',
      },
      {
        'name': 'Quinoa or brown rice',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      },
      {
        'name': 'Mixed herbs and spices',
        'size': '2 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the grains',
        'description':
            'Cook quinoa or brown rice according to package instructions. Set aside.',
      },
      {
        'step': '2. Marinate the meats',
        'description':
            'Cut meats into bite-sized pieces and marinate with herbs, spices, and a bit of olive oil for at least 30 minutes.',
      },
      {
        'step': '3. Cook the meats',
        'description':
            'In a large skillet or grill pan, cook the marinated meats until they\'re properly cooked through.',
      },
      {
        'step': '4. Prepare the vegetables',
        'description':
            'In another pan, sauté the mixed vegetables until they\'re tender-crisp.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'In bowls, layer the cooked grains, sautéed vegetables, and cooked meats. Drizzle with any remaining juices from cooking and serve your Meats and Vegetables Bowl hot.',
      },
    ],
    'reviews': [
      {
        'username': '@mealprepper',
        'review':
            'Perfect for my weekly meal prep! The variety of meats keeps it interesting throughout the week.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros and so filling. I love how customizable this bowl is with different veggies and meats.',
      },
      {
        'username': '@healthyeater',
        'review':
            'A well-balanced meal that keeps me satisfied for hours. I add some avocado for healthy fats.',
      },
      {
        'username': '@busyprofessional',
        'review':
            'Though it takes some time to prepare, it\'s worth it for multiple delicious and healthy meals.',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description':
        'A delightful and nutritious breakfast spread that caters to all tastes. This delimenu features a variety of options including whole grain toast, fresh fruits, yogurt, and a protein-packed egg white scramble.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Egg whites',
        'size': '4',
      },
      {
        'name': 'Greek yogurt',
        'size': '1/2 cup',
      },
      {
        'name': 'Mixed berries',
        'size': '1 cup',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the toast',
        'description':
            'Toast the whole grain bread slices to your desired level of crispness. Set aside.',
      },
      {
        'step': '2. Make the egg white scramble',
        'description':
            'In a non-stick pan over medium heat, scramble the egg whites until they\'re fully cooked but still soft and fluffy.',
      },
      {
        'step': '3. Arrange the fruit',
        'description':
            'Wash the mixed berries and arrange them in a small bowl or on the plate.',
      },
      {
        'step': '4. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and slice or mash the flesh as preferred.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Arrange all components on a plate: toast, egg white scramble, yogurt, berries, and avocado. Serve immediately and enjoy your balanced breakfast delimenu!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'This delimenu has everything I want in a breakfast! Protein, healthy fats, and complex carbs. Perfect start to my day.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Love the variety in this breakfast. The Greek yogurt with berries is my favorite part!',
      },
      {
        'username': '@busymom',
        'review':
            'Great for the whole family. Kids love choosing their favorites from the spread.',
      },
      {
        'username': '@healthnut',
        'review':
            'Nutritionally balanced and delicious. I added a sprinkle of chia seeds for extra omega-3s.',
      },
    ]
  },
];

var bookmarkedRecipeRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'description':
        'A nutritious twist on the classic green eggs and ham. This dish features a vibrant spinach and herb omelette, packed with vegetables and topped with avocado for a healthy and satisfying breakfast or brunch option.',
    'ingredients': [
      {
        'name': 'Eggs',
        'size': '3',
      },
      {
        'name': 'Spinach',
        'size': '100 g',
      },
      {
        'name': 'Mixed herbs',
        'size': '2 tbsp',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the egg mixture',
        'description':
            'In a blender, combine eggs, spinach, and mixed herbs. Blend until smooth and the mixture is bright green.',
      },
      {
        'step': '2. Cook the omelette',
        'description':
            'Heat a non-stick pan over medium heat. Pour in the green egg mixture and cook until the edges start to set.',
      },
      {
        'step': '3. Add fillings',
        'description':
            'Add your choice of additional vegetables to one half of the omelette. Fold the other half over the fillings.',
      },
      {
        'step': '4. Finish cooking',
        'description':
            'Continue cooking until the omelette is set and lightly golden on the outside.',
      },
      {
        'step': '5. Serve',
        'description':
            'Slide the omelette onto a plate. Top with sliced avocado and halved cherry tomatoes. Enjoy your healthy vege green egg!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'Such a fun and tasty way to start the day! The kids were intrigued by the green color and actually ate it all!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'Great macros and so filling. This keeps me satisfied until lunch. Love the extra veggies!',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Made this for weekend brunch and it was a hit! The herb flavor really comes through. Will definitely make again.',
      },
      {
        'username': '@healthyeater',
        'review':
            'Love how this packs in so many nutrients. The avocado on top is a perfect creamy addition.',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description':
        'A gourmet salad that\'s both nutritious and satisfying. This colorful dish combines fresh greens, roasted vegetables, nuts, and a tangy vinaigrette for a perfect balance of flavors and textures.',
    'ingredients': [
      {
        'name': 'Mixed salad greens',
        'size': '200 g',
      },
      {
        'name': 'Roasted vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Goat cheese',
        'size': '50 g',
      },
      {
        'name': 'Walnuts',
        'size': '1/4 cup',
      },
      {
        'name': 'Balsamic vinaigrette',
        'size': '3 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the greens',
        'description':
            'Wash and dry the mixed salad greens. Place them in a large salad bowl.',
      },
      {
        'step': '2. Roast the vegetables',
        'description':
            'Preheat oven to 400°F (200°C). Toss your choice of vegetables (such as bell peppers, zucchini, and carrots) with olive oil and roast for 20-25 minutes.',
      },
      {
        'step': '3. Toast the nuts',
        'description':
            'In a dry skillet over medium heat, toast the walnuts until fragrant, about 5 minutes. Let cool and roughly chop.',
      },
      {
        'step': '4. Assemble the salad',
        'description':
            'Add the roasted vegetables and toasted walnuts to the greens. Crumble the goat cheese over the top.',
      },
      {
        'step': '5. Dress and serve',
        'description':
            'Drizzle the balsamic vinaigrette over the salad. Toss gently to combine all ingredients. Serve immediately and enjoy Ron\'s delicious salad!',
      },
    ],
    'reviews': [
      {
        'username': '@saladking',
        'review':
            'Ron\'s done it again! This salad is the perfect mix of flavors and textures. The roasted veggies add such a nice depth.',
      },
      {
        'username': '@healthyeater',
        'review':
            'I love how filling this salad is while still being light. The goat cheese and walnuts make it feel indulgent.',
      },
      {
        'username': '@cookingnovice',
        'review':
            'Was intimidated at first but the instructions were easy to follow. Result was restaurant-quality!',
      },
      {
        'username': '@gourmetgal',
        'review':
            'The balance of flavors in this salad is perfect. I added some grilled chicken to make it a full meal.',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 min',
    'description':
        'A fresh and flavorful twist on avocado toast, featuring aromatic basil leaves. This open-faced sandwich combines creamy avocado, fragrant basil, and crusty bread for a delightful and nutritious meal.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Ripe avocado',
        'size': '1',
      },
      {
        'name': 'Fresh basil leaves',
        'size': '1/4 cup',
      },
      {
        'name': 'Lemon juice',
        'size': '1 tbsp',
      },
      {
        'name': 'Extra virgin olive oil',
        'size': '1 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Toast the bread',
        'description':
            'Lightly toast the whole grain bread slices until they\'re golden and crispy.',
      },
      {
        'step': '2. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and scoop the flesh into a bowl. Mash it with a fork and add lemon juice to prevent browning.',
      },
      {
        'step': '3. Chop the basil',
        'description':
            'Wash the basil leaves and chop them finely, reserving a few whole leaves for garnish.',
      },
      {
        'step': '4. Mix and spread',
        'description':
            'Mix the chopped basil into the mashed avocado. Spread this mixture evenly on the toasted bread slices.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Drizzle with olive oil, garnish with whole basil leaves, and add salt and pepper to taste. Serve immediately and enjoy your Basil Leaves & Avocado Bread!',
      },
    ],
    'reviews': [
      {
        'username': '@avocadolover',
        'review':
            'The basil adds such a lovely freshness to classic avocado toast. I\'ll be making this regularly!',
      },
      {
        'username': '@healthyfoodie',
        'review':
            'Simple yet so flavorful. I added a sprinkle of red pepper flakes for some heat.',
      },
      {
        'username': '@brunchqueen',
        'review':
            'Perfect for a quick and easy brunch. The lemon juice really brightens up the flavors.',
      },
      {
        'username': '@nutritionguru',
        'review':
            'Great combination of healthy fats and complex carbs. I used sprouted grain bread for extra nutrition.',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 min',
    'categories': ['Meat', 'Dinner'],
    'description':
        'A protein-packed dish featuring lean beef and perfectly cooked eggs. This balanced meal combines savory flavors with nutritious ingredients for a satisfying and healthy option any time of day.',
    'ingredients': [
      {
        'name': 'Lean ground beef',
        'size': '200 g',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Mixed vegetables',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '1 tbsp',
      },
      {
        'name': 'Mixed herbs',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook the beef',
        'description':
            'In a skillet over medium heat, cook the lean ground beef until browned. Drain any excess fat.',
      },
      {
        'step': '2. Add vegetables',
        'description':
            'Add mixed vegetables to the skillet and cook until they\'re tender-crisp.',
      },
      {
        'step': '3. Season the mixture',
        'description':
            'Stir in mixed herbs and season with salt and pepper to taste.',
      },
      {
        'step': '4. Cook the eggs',
        'description':
            'Make two wells in the beef mixture and crack an egg into each. Cover and cook until the eggs are set to your liking.',
      },
      {
        'step': '5. Serve',
        'description':
            'Carefully transfer the beef and egg mixture to plates. Garnish with fresh herbs if desired and serve your Healthy Beef & Egg dish hot.',
      },
    ],
    'reviews': [
      {
        'username': '@proteinfanatic',
        'review':
            'Great macro balance in this meal. The eggs were perfectly cooked with runny yolks!',
      },
      {
        'username': '@fitnessguru',
        'review':
            'I love how customizable this is. I used turkey instead of beef and it was delicious.',
      },
      {
        'username': '@busycook',
        'review':
            'Quick, easy, and nutritious. This has become a go-to weeknight dinner for me.',
      },
      {
        'username': '@lowcarblife',
        'review':
            'Perfect for my low-carb diet. I added some avocado on the side for healthy fats.',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 min',
    'categories': ['Meat', 'Dinner'],
    'description':
        'A hearty and nutritious bowl featuring a variety of meats and colorful vegetables. This well-balanced meal is perfect for meal prep or a satisfying dinner option that\'s both delicious and wholesome.',
    'ingredients': [
      {
        'name': 'Assorted meats (chicken, beef, pork)',
        'size': '300 g',
      },
      {
        'name': 'Mixed vegetables',
        'size': '2 cups',
      },
      {
        'name': 'Quinoa or brown rice',
        'size': '1 cup',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      },
      {
        'name': 'Mixed herbs and spices',
        'size': '2 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the grains',
        'description':
            'Cook quinoa or brown rice according to package instructions. Set aside.',
      },
      {
        'step': '2. Marinate the meats',
        'description':
            'Cut meats into bite-sized pieces and marinate with herbs, spices, and a bit of olive oil for at least 30 minutes.',
      },
      {
        'step': '3. Cook the meats',
        'description':
            'In a large skillet or grill pan, cook the marinated meats until they\'re properly cooked through.',
      },
      {
        'step': '4. Prepare the vegetables',
        'description':
            'In another pan, sauté the mixed vegetables until they\'re tender-crisp.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'In bowls, layer the cooked grains, sautéed vegetables, and cooked meats. Drizzle with any remaining juices from cooking and serve your Meats and Vegetables Bowl hot.',
      },
    ],
    'reviews': [
      {
        'username': '@mealprepper',
        'review':
            'Perfect for my weekly meal prep! The variety of meats keeps it interesting throughout the week.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Great macros and so filling. I love how customizable this bowl is with different veggies and meats.',
      },
      {
        'username': '@healthyeater',
        'review':
            'A well-balanced meal that keeps me satisfied for hours. I add some avocado for healthy fats.',
      },
      {
        'username': '@busyprofessional',
        'review':
            'Though it takes some time to prepare, it\'s worth it for multiple delicious and healthy meals.',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description':
        'A delightful and nutritious breakfast spread that caters to all tastes. This delimenu features a variety of options including whole grain toast, fresh fruits, yogurt, and a protein-packed egg white scramble.',
    'ingredients': [
      {
        'name': 'Whole grain bread',
        'size': '2 slices',
      },
      {
        'name': 'Egg whites',
        'size': '4',
      },
      {
        'name': 'Greek yogurt',
        'size': '1/2 cup',
      },
      {
        'name': 'Mixed berries',
        'size': '1 cup',
      },
      {
        'name': 'Avocado',
        'size': '1/2',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the toast',
        'description':
            'Toast the whole grain bread slices to your desired level of crispness. Set aside.',
      },
      {
        'step': '2. Make the egg white scramble',
        'description':
            'In a non-stick pan over medium heat, scramble the egg whites until they\'re fully cooked but still soft and fluffy.',
      },
      {
        'step': '3. Arrange the fruit',
        'description':
            'Wash the mixed berries and arrange them in a small bowl or on the plate.',
      },
      {
        'step': '4. Prepare the avocado',
        'description':
            'Cut the avocado in half, remove the pit, and slice or mash the flesh as preferred.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Arrange all components on a plate: toast, egg white scramble, yogurt, berries, and avocado. Serve immediately and enjoy your balanced breakfast delimenu!',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastlover',
        'review':
            'This delimenu has everything I want in a breakfast! Protein, healthy fats, and complex carbs. Perfect start to my day.',
      },
      {
        'username': '@fitfoodie',
        'review':
            'Love the variety in this breakfast. The Greek yogurt with berries is my favorite part!',
      },
      {
        'username': '@busymom',
        'review':
            'Great for the whole family. Kids love choosing their favorites from the spread.',
      },
      {
        'username': '@healthnut',
        'review':
            'Nutritionally balanced and delicious. I added a sprinkle of chia seeds for extra omega-3s.',
      },
    ]
  },
];

var spicyRecipeRawData = [
  {
    'title': 'Spicy Jalapeño Popper Dip',
    'photo': 'assets/images/spicy1.jpg',
    'calories': '350 Cal',
    'time': '40 min',
    'categories': ['Spicy', 'Appetizer'],
    'description':
        'A creamy, cheesy dip with a spicy kick from fresh jalapeños. This crowd-pleasing appetizer is perfect for parties or game day gatherings.',
    'ingredients': [
      {
        'name': 'Cream cheese',
        'size': '450 g',
      },
      {
        'name': 'Jalapeños, diced',
        'size': '4-5',
      },
      {
        'name': 'Shredded cheddar cheese',
        'size': '1 cup',
      },
      {
        'name': 'Bacon, cooked and crumbled',
        'size': '6 slices',
      },
      {
        'name': 'Green onions, chopped',
        'size': '1/4 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Preheat oven',
        'description': 'Preheat your oven to 375°F (190°C).',
      },
      {
        'step': '2. Mix ingredients',
        'description':
            'In a large bowl, mix cream cheese, diced jalapeños, cheddar cheese, and half of the bacon and green onions.',
      },
      {
        'step': '3. Transfer to baking dish',
        'description': 'Spread the mixture in a 9-inch baking dish.',
      },
      {
        'step': '4. Bake',
        'description': 'Bake for 20-25 minutes until hot and bubbly.',
      },
      {
        'step': '5. Garnish and serve',
        'description':
            'Top with remaining bacon and green onions. Serve hot with tortilla chips or crackers.',
      },
    ],
    'reviews': [
      {
        'username': '@spicylover',
        'review':
            'This dip is addictive! Just the right amount of heat and so creamy.',
      },
      {
        'username': '@partyhostextraordinaire',
        'review':
            'Made this for a potluck and it was gone in minutes! Definitely a crowd-pleaser.',
      },
      {
        'username': '@cheesefanatic',
        'review':
            'The combination of cream cheese and cheddar is perfection. I added extra jalapeños for more kick!',
      },
      {
        'username': '@easycooking101',
        'review':
            'Simple to make but tastes like it took hours. Will be my go-to party dip from now on.',
      },
    ]
  },
  {
    'title': 'Fiery Thai Red Curry',
    'photo': 'assets/images/spicy2.jpg',
    'calories': '450 Cal',
    'time': '35 min',
    'categories': ['Spicy', 'Thai', 'Main Course'],
    'description':
        'A bold and spicy Thai red curry packed with vegetables and your choice of protein. This dish brings the heat and flavor of authentic Thai cuisine to your home kitchen.',
    'ingredients': [
      {'name': 'Red curry paste', 'size': '3 tbsp'},
      {'name': 'Coconut milk', 'size': '2 cans'},
      {'name': 'Mixed vegetables', 'size': '2 cups'},
      {'name': 'Protein (chicken, tofu, or shrimp)', 'size': '1 lb'},
      {'name': 'Fish sauce', 'size': '2 tbsp'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare ingredients',
        'description': 'Cut vegetables and protein into bite-sized pieces.'
      },
      {
        'step': '2. Cook curry paste',
        'description':
            'In a large pot, cook red curry paste in a little oil until fragrant.'
      },
      {
        'step': '3. Add coconut milk',
        'description': 'Stir in coconut milk and bring to a simmer.'
      },
      {
        'step': '4. Cook protein and vegetables',
        'description':
            'Add your chosen protein and vegetables, simmer until cooked through.'
      },
      {
        'step': '5. Season and serve',
        'description':
            'Stir in fish sauce, adjust seasonings, and serve hot with rice.'
      },
    ],
    'reviews': [
      {
        'username': '@thaifoodfanatic',
        'review':
            'Tastes just like the curry I had in Thailand! So spicy and delicious.'
      },
      {
        'username': '@spiceaddict',
        'review':
            'The heat level is perfect. I added some extra chili flakes for an extra kick.'
      },
      {
        'username': '@quickandeasy',
        'review':
            'Surprisingly easy to make and packed with flavor. A new weeknight favorite!'
      },
      {
        'username': '@veggielover',
        'review':
            'I made this with tofu and extra veggies. So good and adaptable!'
      },
    ]
  },
  {
    'title': 'Spicy Buffalo Chicken Wings',
    'photo': 'assets/images/spicy3.jpg',
    'calories': '300 Cal',
    'time': '45 min',
    'categories': ['Spicy', 'Appetizer', 'American'],
    'description':
        'Crispy, tangy, and fiery hot buffalo wings that are perfect for game day or any casual gathering. These wings pack a serious flavor punch!',
    'ingredients': [
      {'name': 'Chicken wings', 'size': '2 lbs'},
      {'name': 'Hot sauce', 'size': '1/2 cup'},
      {'name': 'Butter', 'size': '1/4 cup'},
      {'name': 'Garlic powder', 'size': '1 tsp'},
      {'name': 'Blue cheese or ranch dressing', 'size': 'for serving'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare oven',
        'description':
            'Preheat oven to 400°F (200°C) and line a baking sheet with parchment paper.'
      },
      {
        'step': '2. Season wings',
        'description': 'Toss wings with salt, pepper, and garlic powder.'
      },
      {
        'step': '3. Bake wings',
        'description':
            'Arrange wings on the baking sheet and bake for 40-45 minutes, flipping halfway through.'
      },
      {
        'step': '4. Prepare sauce',
        'description': 'In a saucepan, melt butter and mix with hot sauce.'
      },
      {
        'step': '5. Coat and serve',
        'description':
            'Toss baked wings in the buffalo sauce and serve with blue cheese or ranch dressing.'
      },
    ],
    'reviews': [
      {
        'username': '@wingking',
        'review':
            'These wings are finger-licking good! The perfect level of heat and tang.'
      },
      {
        'username': '@sportsfan',
        'review':
            'Made these for the big game and they were a touchdown with my friends!'
      },
      {
        'username': '@spicequeen',
        'review':
            'Love how crispy these get in the oven. I added extra hot sauce for more heat.'
      },
      {
        'username': '@easypeasy',
        'review':
            'So much easier than deep frying and just as delicious. Will make again!'
      },
    ]
  },
  {
    'title': 'Spicy Kimchi Fried Rice',
    'photo': 'assets/images/spicy4.jpg',
    'calories': '400 Cal',
    'time': '20 min',
    'categories': ['Spicy', 'Korean', 'Main Course'],
    'description':
        'A quick and satisfying Korean-inspired dish that transforms leftover rice into a spicy, savory meal. The kimchi adds a delicious tang and heat to this comforting fried rice.',
    'ingredients': [
      {'name': 'Cooked rice', 'size': '3 cups'},
      {'name': 'Kimchi, chopped', 'size': '1 cup'},
      {'name': 'Spam or bacon, diced', 'size': '1/2 cup'},
      {'name': 'Eggs', 'size': '2'},
      {'name': 'Green onions, chopped', 'size': '1/4 cup'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare ingredients',
        'description': 'Chop kimchi, dice meat, and beat eggs.'
      },
      {
        'step': '2. Cook meat',
        'description':
            'In a large skillet, cook diced spam or bacon until crispy.'
      },
      {
        'step': '3. Add kimchi',
        'description':
            'Add chopped kimchi to the skillet and stir-fry for a few minutes.'
      },
      {
        'step': '4. Fry rice',
        'description':
            'Add rice to the skillet and stir-fry until heated through and slightly crispy.'
      },
      {
        'step': '5. Add egg and serve',
        'description':
            'Push rice to one side, scramble eggs in the empty space. Mix everything together, top with green onions, and serve.'
      },
    ],
    'reviews': [
      {
        'username': '@koreanfoodie',
        'review':
            'This tastes just like the kimchi fried rice I had in Seoul. So good!'
      },
      {
        'username': '@leftoversqueen',
        'review':
            'Great way to use up leftover rice. I added some extra gochujang for more spice.'
      },
      {
        'username': '@quickmeals',
        'review':
            'Fast, easy, and delicious. Perfect for a weeknight dinner when I\'m short on time.'
      },
      {
        'username': '@spicyobsessed',
        'review':
            'The kimchi adds such a great flavor and heat. I could eat this every day!'
      },
    ]
  },
  {
    'title': 'Fiery Habanero Salsa',
    'photo': 'assets/images/spicy5.jpg',
    'calories': '30 Cal',
    'time': '15 min',
    'categories': ['Spicy', 'Mexican', 'Condiment'],
    'description':
        'An extremely hot and flavorful salsa featuring fiery habanero peppers. This salsa is not for the faint of heart, but perfect for true heat seekers!',
    'ingredients': [
      {'name': 'Habanero peppers', 'size': '3-4'},
      {'name': 'Tomatoes, diced', 'size': '2 cups'},
      {'name': 'Onion, chopped', 'size': '1/2 cup'},
      {'name': 'Cilantro, chopped', 'size': '1/4 cup'},
      {'name': 'Lime juice', 'size': '2 tbsp'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare peppers',
        'description':
            'Carefully remove seeds from habaneros (wear gloves!) and finely chop.'
      },
      {
        'step': '2. Combine ingredients',
        'description':
            'In a bowl, mix chopped habaneros, tomatoes, onion, and cilantro.'
      },
      {
        'step': '3. Add lime juice',
        'description': 'Stir in lime juice and season with salt to taste.'
      },
      {
        'step': '4. Let flavors meld',
        'description':
            'Allow salsa to sit for at least 30 minutes for flavors to combine.'
      },
      {
        'step': '5. Serve or store',
        'description':
            'Serve with chips or use as a fiery condiment. Can be stored in the refrigerator for up to a week.'
      },
    ],
    'reviews': [
      {
        'username': '@chilihead',
        'review':
            'This salsa brings the heat! Absolutely love the flavor of habaneros.'
      },
      {
        'username': '@mexicancuisineexpert',
        'review':
            'Authentic taste and serious spice. Perfect on tacos or with grilled meats.'
      },
      {
        'username': '@bravesoul',
        'review':
            'Whew! This is hot but so addictive. I can\'t stop eating it despite the burn.'
      },
      {
        'username': '@salsaqueen',
        'review':
            'Great recipe! I roasted the habaneros first for a slightly smoky flavor.'
      },
    ]
  },
];

var drinksRecipeRawData = [
  {
    'title': 'Refreshing Cucumber Mint Cooler',
    'photo': 'assets/images/drink1.jpg',
    'calories': '120 Cal',
    'time': '10 min',
    'categories': ['Drinks', 'Summer'],
    'description':
        'A cool, refreshing drink perfect for hot summer days. This cucumber mint cooler is hydrating, low in calories, and bursting with fresh flavors.',
    'ingredients': [
      {
        'name': 'Cucumber, sliced',
        'size': '1',
      },
      {
        'name': 'Fresh mint leaves',
        'size': '1/4 cup',
      },
      {
        'name': 'Lime juice',
        'size': '2 tbsp',
      },
      {
        'name': 'Honey',
        'size': '2 tbsp',
      },
      {
        'name': 'Sparkling water',
        'size': '4 cups',
      }
    ],
    'tutorial': [
      {
        'step': '1. Muddle cucumber and mint',
        'description':
            'In a pitcher, gently muddle cucumber slices and mint leaves to release their flavors.',
      },
      {
        'step': '2. Add sweetener',
        'description':
            'Stir in lime juice and honey until the honey is dissolved.',
      },
      {
        'step': '3. Add sparkling water',
        'description':
            'Pour in the sparkling water and stir gently to combine.',
      },
      {
        'step': '4. Chill',
        'description':
            'Refrigerate for at least 30 minutes to allow flavors to meld.',
      },
      {
        'step': '5. Serve',
        'description':
            'Serve over ice, garnished with additional cucumber slices and mint leaves if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@summersipper',
        'review':
            'So refreshing! This is my new favorite non-alcoholic drink for summer parties.',
      },
      {
        'username': '@healthylifestyle',
        'review':
            'Love how light and hydrating this is. Perfect for post-workout refreshment.',
      },
      {
        'username': '@mintaddict',
        'review':
            'The mint really makes this drink special. I added a splash of gin for an adult version - delicious!',
      },
      {
        'username': '@easypeasy',
        'review':
            'Quick to make and so tasty. My kids love helping to muddle the cucumbers and mint.',
      },
    ]
  },
  {
    'title': 'Classic Mojito',
    'photo': 'assets/images/drink2.jpg',
    'calories': '170 Cal',
    'time': '5 min',
    'categories': ['Drinks', 'Cocktail'],
    'description':
        'A refreshing Cuban highball cocktail that\'s perfect for warm weather. This classic mojito combines white rum, fresh mint, lime, sugar, and soda water for a crisp and invigorating drink.',
    'ingredients': [
      {'name': 'White rum', 'size': '2 oz'},
      {'name': 'Fresh mint leaves', 'size': '8-10'},
      {'name': 'Lime juice', 'size': '1 oz'},
      {'name': 'Simple syrup', 'size': '0.75 oz'},
      {'name': 'Soda water', 'size': '2 oz'}
    ],
    'tutorial': [
      {
        'step': '1. Muddle mint',
        'description':
            'In a glass, gently muddle mint leaves with simple syrup.'
      },
      {
        'step': '2. Add rum and lime',
        'description': 'Pour in rum and fresh lime juice.'
      },
      {'step': '3. Add ice', 'description': 'Fill the glass with ice cubes.'},
      {
        'step': '4. Top with soda',
        'description': 'Top off with soda water and stir gently.'
      },
      {
        'step': '5. Garnish and serve',
        'description':
            'Garnish with a sprig of mint and a lime wheel. Serve immediately.'
      },
    ],
    'reviews': [
      {
        'username': '@cocktailconnoisseur',
        'review':
            'Perfect balance of flavors. This recipe nails the classic mojito taste.'
      },
      {
        'username': '@summersipper',
        'review': 'So refreshing! My go-to drink for hot days.'
      },
      {
        'username': '@mixologymaster',
        'review': 'Authentic and well-proportioned. A true Cuban classic.'
      },
      {
        'username': '@casualdrinker',
        'review': 'Easy to make and always a crowd-pleaser at parties.'
      }
    ]
  },
  {
    'title': 'Strawberry Basil Lemonade',
    'photo': 'assets/images/drink3.jpg',
    'calories': '120 Cal',
    'time': '10 min',
    'categories': ['Drinks', 'Non-Alcoholic', 'Summer'],
    'description':
        'A refreshing twist on classic lemonade, this strawberry basil version is perfect for summer gatherings. The combination of sweet strawberries and aromatic basil creates a unique and delightful flavor profile.',
    'ingredients': [
      {'name': 'Fresh strawberries', 'size': '1 cup'},
      {'name': 'Fresh basil leaves', 'size': '10-12'},
      {'name': 'Lemon juice', 'size': '1 cup'},
      {'name': 'Simple syrup', 'size': '3/4 cup'},
      {'name': 'Water', 'size': '4 cups'},
      {'name': 'Ice cubes', 'size': 'as needed'}
    ],
    'tutorial': [
      {
        'step': '1. Blend strawberries',
        'description': 'Puree strawberries in a blender until smooth.'
      },
      {
        'step': '2. Muddle basil',
        'description':
            'In a pitcher, gently muddle basil leaves to release their flavor.'
      },
      {
        'step': '3. Combine ingredients',
        'description':
            'Add strawberry puree, lemon juice, simple syrup, and water to the pitcher.'
      },
      {
        'step': '4. Stir and chill',
        'description':
            'Stir well and refrigerate for at least 1 hour to let flavors meld.'
      },
      {
        'step': '5. Serve',
        'description':
            'Pour over ice, garnish with fresh strawberries and basil leaves, and serve.'
      }
    ],
    'reviews': [
      {
        'username': '@freshdrinkfan',
        'review': 'The basil adds such a lovely twist to this lemonade!'
      },
      {
        'username': '@summerpartyhost',
        'review': 'Always a hit at my barbecues. Refreshing and not too sweet.'
      },
      {
        'username': '@healthysipper',
        'review': 'Love that it\'s naturally sweetened with fruit. So good!'
      },
      {
        'username': '@mocktailmaven',
        'review': 'A sophisticated non-alcoholic option. Delicious!'
      }
    ],
  },
  {
    'title': 'Spicy Mango Margarita',
    'photo': 'assets/images/drink4.jpg',
    'calories': '210 Cal',
    'time': '7 min',
    'categories': ['Drinks', 'Cocktail', 'Spicy'],
    'description':
        'A tropical twist on the classic margarita, this spicy mango version balances sweet fruit flavors with a kick of heat. Perfect for those who like their cocktails with a bit of a punch.',
    'ingredients': [
      {'name': 'Tequila', 'size': '2 oz'},
      {'name': 'Fresh mango puree', 'size': '1.5 oz'},
      {'name': 'Lime juice', 'size': '1 oz'},
      {'name': 'Agave nectar', 'size': '0.5 oz'},
      {'name': 'Jalapeño slices', 'size': '2-3'},
      {'name': 'Tajín seasoning', 'size': 'for rim'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare glass',
        'description': 'Rim a glass with Tajín seasoning and set aside.'
      },
      {
        'step': '2. Muddle jalapeño',
        'description': 'In a shaker, muddle jalapeño slices with agave nectar.'
      },
      {
        'step': '3. Add ingredients',
        'description':
            'Add tequila, mango puree, and lime juice to the shaker with ice.'
      },
      {
        'step': '4. Shake and strain',
        'description':
            'Shake vigorously and strain into the prepared glass over fresh ice.'
      },
      {
        'step': '5. Garnish',
        'description':
            'Garnish with a mango slice and a jalapeño round. Serve immediately.'
      }
    ],
    'reviews': [
      {
        'username': '@spicycocktaillover',
        'review': 'The perfect balance of sweet and heat. Absolutely addictive!'
      },
      {
        'username': '@tequilaenthusiast',
        'review':
            'A unique take on the margarita. The mango really shines through.'
      },
      {
        'username': '@tropicalvibes',
        'review': 'Feels like a vacation in a glass. Love the spicy kick!'
      },
      {
        'username': '@mixitupbarkeep',
        'review':
            'Great recipe, always impresses my guests with its complex flavors.'
      }
    ]
  },
  {
    'title': 'Lavender Earl Grey Iced Tea',
    'photo': 'assets/images/drink5.jpg',
    'calories': '80 Cal',
    'time': '15 min',
    'categories': ['Drinks', 'Non-Alcoholic', 'Tea'],
    'description':
        'A sophisticated and fragrant iced tea that combines the bold flavors of Earl Grey with the soothing notes of lavender. This refreshing drink is perfect for afternoon sipping or elegant gatherings.',
    'ingredients': [
      {'name': 'Earl Grey tea bags', 'size': '4'},
      {'name': 'Dried lavender buds', 'size': '1 tbsp'},
      {'name': 'Hot water', 'size': '4 cups'},
      {'name': 'Honey', 'size': '2 tbsp'},
      {'name': 'Lemon juice', 'size': '2 tbsp'},
      {'name': 'Ice cubes', 'size': 'as needed'}
    ],
    'tutorial': [
      {
        'step': '1. Steep tea',
        'description':
            'In a heat-proof pitcher, steep Earl Grey tea bags and lavender buds in hot water for 5 minutes.'
      },
      {
        'step': '2. Remove tea bags',
        'description': 'Remove tea bags, but leave lavender buds in the tea.'
      },
      {
        'step': '3. Add sweetener',
        'description': 'Stir in honey and lemon juice until fully dissolved.'
      },
      {
        'step': '4. Chill',
        'description': 'Refrigerate the tea until cold, about 2 hours.'
      },
      {
        'step': '5. Serve',
        'description':
            'Strain out lavender buds, pour over ice, and garnish with a lemon slice and a sprig of fresh lavender.'
      }
    ],
    'reviews': [
      {
        'username': '@teaconnoisseur',
        'review':
            'The lavender adds such a lovely floral note to the Earl Grey. Delightful!'
      },
      {
        'username': '@afternoonteafan',
        'review':
            'A sophisticated iced tea that\'s perfect for warm days. Love it!'
      },
      {
        'username': '@aromatherapylover',
        'review': 'The scent alone is so calming. A new favorite for sure.'
      },
      {
        'username': '@fancydrinkmaker',
        'review':
            'Impressed my book club with this elegant iced tea. It\'s a winner!'
      }
    ]
  },
  {
    'title': 'Cucumber Mint Gin Fizz',
    'photo': 'assets/images/drink6.jpg',
    'calories': '160 Cal',
    'time': '8 min',
    'categories': ['Drinks', 'Cocktail', 'Refreshing'],
    'description':
        'A light and refreshing cocktail that combines the crispness of cucumber with the bright flavors of mint and lime. This gin fizz variation is perfect for warm weather and garden parties.',
    'ingredients': [
      {'name': 'Gin', 'size': '2 oz'},
      {'name': 'Fresh cucumber juice', 'size': '1 oz'},
      {'name': 'Lime juice', 'size': '0.75 oz'},
      {'name': 'Simple syrup', 'size': '0.5 oz'},
      {'name': 'Fresh mint leaves', 'size': '6-8'},
      {'name': 'Soda water', 'size': '2 oz'},
      {'name': 'Cucumber slice and mint sprig', 'size': 'for garnish'}
    ],
    'tutorial': [
      {
        'step': '1. Muddle mint',
        'description':
            'In a shaker, gently muddle mint leaves with simple syrup.'
      },
      {
        'step': '2. Add ingredients',
        'description':
            'Add gin, cucumber juice, and lime juice to the shaker with ice.'
      },
      {
        'step': '3. Shake',
        'description': 'Shake vigorously for about 10 seconds.'
      },
      {
        'step': '4. Strain and top',
        'description':
            'Double strain into a tall glass filled with ice and top with soda water.'
      },
      {
        'step': '5. Garnish and serve',
        'description':
            'Garnish with a cucumber slice and a sprig of mint. Serve immediately.'
      }
    ],
    'reviews': [
      {
        'username': '@gardentoglass',
        'review':
            'So refreshing! The cucumber and mint make it taste like summer.'
      },
      {
        'username': '@ginlover',
        'review':
            'A delightful twist on a gin fizz. The cucumber adds a lovely crispness.'
      },
      {
        'username': '@cocktailhour',
        'review': 'Elegant and easy to drink. Perfect for outdoor parties!'
      },
      {
        'username': '@freshingredientfan',
        'review':
            'Love how light and refreshing this is. A new favorite for sure.'
      }
    ],
  },
];

var seafoodRecipeRawData = [
  {
    'title': 'Lemon Garlic Butter Shrimp Pasta',
    'photo': 'assets/images/seafood1.jpg',
    'calories': '650 Cal',
    'time': '25 min',
    'categories': ['Seafood', 'Pasta'],
    'description':
        'A delightful shrimp pasta dish with a light, flavorful lemon garlic butter sauce. Quick to prepare, this meal is perfect for busy weeknights or elegant enough for entertaining.',
    'ingredients': [
      {
        'name': 'Large shrimp, peeled and deveined',
        'size': '1 lb',
      },
      {
        'name': 'Spaghetti or linguine',
        'size': '340 g',
      },
      {
        'name': 'Butter',
        'size': '1/4 cup',
      },
      {
        'name': 'Garlic, minced',
        'size': '4 cloves',
      },
      {
        'name': 'Lemon juice',
        'size': '2 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook pasta',
        'description':
            'Cook the pasta in salted water according to package instructions. Reserve 1/2 cup of pasta water before draining.',
      },
      {
        'step': '2. Prepare sauce',
        'description':
            'In a large skillet, melt butter over medium heat. Add minced garlic and cook until fragrant.',
      },
      {
        'step': '3. Cook shrimp',
        'description':
            'Add shrimp to the skillet and cook until pink and opaque, about 2-3 minutes per side.',
      },
      {
        'step': '4. Combine',
        'description':
            'Add cooked pasta to the skillet with shrimp. Toss with lemon juice and pasta water as needed to create a light sauce.',
      },
      {
        'step': '5. Serve',
        'description':
            'Serve hot, garnished with parsley and lemon wedges if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@pastaenthusiast',
        'review':
            'Simple yet so flavorful! The lemon garlic butter sauce is perfect with the shrimp.',
      },
      {
        'username': '@quickmeals',
        'review':
            'Impressed by how fast this came together. Restaurant quality in less than 30 minutes!',
      },
      {
        'username': '@seafoodlover',
        'review':
            'The shrimp were perfectly cooked and the sauce was light but satisfying. Will make again!',
      },
      {
        'username': '@healthyswaps',
        'review':
            'I used whole wheat pasta and a bit less butter. Still delicious and a bit more nutritious!',
      },
    ]
  },
];
