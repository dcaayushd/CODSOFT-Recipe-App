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
    'title': 'Spicy Thai Basil Chicken',
    'photo': 'assets/images/recom3.jpg',
    'calories': '450 Cal',
    'time': '30 min',
    'categories': ['Asian', 'Spicy', 'Dinner'],
    'description':
        'A fiery and aromatic Thai dish featuring minced chicken stir-fried with garlic, chili, and plenty of fresh basil. Served over steamed rice, this meal packs a flavorful punch and is perfect for spice lovers.',
    'ingredients': [
      {
        'name': 'Ground chicken',
        'size': '500 g',
      },
      {
        'name': 'Thai basil leaves',
        'size': '2 cups',
      },
      {
        'name': 'Garlic cloves',
        'size': '4',
      },
      {
        'name': 'Thai chili peppers',
        'size': '3-5',
      },
      {
        'name': 'Fish sauce',
        'size': '2 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare ingredients',
        'description':
            'Mince garlic and chili peppers. Wash and dry the basil leaves.',
      },
      {
        'step': '2. Cook the chicken',
        'description':
            'Heat oil in a wok over high heat. Add chicken and stir-fry until it begins to brown.',
      },
      {
        'step': '3. Add aromatics',
        'description':
            'Toss in garlic and chilies. Stir-fry for another minute until fragrant.',
      },
      {
        'step': '4. Season',
        'description':
            'Add fish sauce, soy sauce, and a pinch of sugar. Stir to combine.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Turn off heat and toss in the basil leaves. Serve hot over steamed rice.',
      },
    ],
    'reviews': [
      {
        'username': '@spicyfoodnerd',
        'review':
            'Absolutely love this dish! It\'s spicy, fragrant, and so satisfying.',
      },
      {
        'username': '@thaifoodlover',
        'review':
            'Tastes just like what I had in Bangkok. The basil really makes the dish!',
      },
      {
        'username': '@quickmealchef',
        'review':
            'So quick to make and packed with flavor. It\'s become a weeknight staple.',
      },
      {
        'username': '@healthyeats',
        'review':
            'I used ground turkey instead of chicken and it was still delicious!',
      },
    ]
  },
  {
    'title': 'Creamy Mushroom Risotto',
    'photo': 'assets/images/recom4.jpg',
    'calories': '580 Cal',
    'time': '40 min',
    'categories': ['Italian', 'Vegetarian', 'Dinner', 'Healthy'],
    'description':
        'A luxurious Italian rice dish cooked to creamy perfection with earthy mushrooms, rich Parmesan cheese, and a touch of white wine. This comforting risotto is sure to impress.',
    'ingredients': [
      {
        'name': 'Arborio rice',
        'size': '1.5 cups',
      },
      {
        'name': 'Mixed mushrooms',
        'size': '300 g',
      },
      {
        'name': 'Vegetable broth',
        'size': '5 cups',
      },
      {
        'name': 'Parmesan cheese',
        'size': '1/2 cup',
      },
      {
        'name': 'White wine',
        'size': '1/2 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare ingredients',
        'description':
            'Slice mushrooms, grate Parmesan, and heat broth in a separate pot.',
      },
      {
        'step': '2. Sauté mushrooms',
        'description':
            'In a large pan, sauté mushrooms in olive oil until golden. Remove and set aside.',
      },
      {
        'step': '3. Toast rice',
        'description':
            'In the same pan, toast the rice for a minute. Add wine and stir until absorbed.',
      },
      {
        'step': '4. Cook risotto',
        'description':
            'Gradually add hot broth, stirring constantly. Continue until rice is creamy and al dente.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Stir in mushrooms, Parmesan, and butter. Season and serve immediately.',
      },
    ],
    'reviews': [
      {
        'username': '@italianfoodie',
        'review':
            'Absolutely delicious! Creamy and full of flavor. Restaurant quality at home.',
      },
      {
        'username': '@mushroomlover',
        'review':
            'The mix of mushrooms gives such a great depth of flavor. I added some truffle oil at the end - heaven!',
      },
      {
        'username': '@homechef',
        'review':
            'Takes some effort with all the stirring, but so worth it. A great dish to impress guests.',
      },
      {
        'username': '@comfortfoodjunkie',
        'review': 'Pure comfort in a bowl. I could eat this every day!',
      },
    ]
  },
  {
    'title': 'Quinoa and Roasted Vegetable Bowl',
    'photo': 'assets/images/recom5.jpg',
    'calories': '420 Cal',
    'time': '35 min',
    'categories': ['Vegan', 'Healthy', 'Lunch'],
    'description':
        'A nourishing and colorful bowl packed with protein-rich quinoa and a medley of roasted vegetables. Drizzled with a zesty lemon tahini dressing, this dish is both healthy and satisfying.',
    'ingredients': [
      {
        'name': 'Quinoa',
        'size': '1 cup',
      },
      {
        'name': 'Mixed vegetables (bell peppers, zucchini, carrots)',
        'size': '3 cups',
      },
      {
        'name': 'Chickpeas',
        'size': '1 can',
      },
      {
        'name': 'Tahini',
        'size': '2 tbsp',
      },
      {
        'name': 'Lemon juice',
        'size': '2 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare quinoa',
        'description':
            'Rinse quinoa and cook according to package instructions.',
      },
      {
        'step': '2. Roast vegetables',
        'description':
            'Chop vegetables, toss with olive oil and seasonings, and roast at 400°F for 20-25 minutes.',
      },
      {
        'step': '3. Prepare chickpeas',
        'description':
            'Drain and rinse chickpeas. Toss with spices and add to the roasting vegetables for the last 10 minutes.',
      },
      {
        'step': '4. Make dressing',
        'description':
            'Whisk together tahini, lemon juice, garlic, water, and salt until smooth.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Divide quinoa among bowls, top with roasted vegetables and chickpeas. Drizzle with tahini dressing.',
      },
    ],
    'reviews': [
      {
        'username': '@plantbasedpro',
        'review':
            'Such a satisfying vegan meal! The roasted veggies have so much flavor.',
      },
      {
        'username': '@healthylifestyle',
        'review':
            'Love how nutritious and colorful this bowl is. The tahini dressing is a game-changer!',
      },
      {
        'username': '@mealprepper',
        'review':
            'Great for meal prep! I make a big batch on Sundays for lunches throughout the week.',
      },
      {
        'username': '@glutenfreegourmet',
        'review':
            'Delicious gluten-free option. I added some pumpkin seeds for extra crunch.',
      },
    ]
  },
  {
    'title': 'Classic Beef Burger',
    'photo': 'assets/images/recom6.jpg',
    'calories': '650 Cal',
    'time': '25 min',
    'categories': ['American', 'Beef', 'Dinner', 'Meat', 'Burger'],
    'description':
        'A juicy, perfectly grilled beef patty nestled in a soft bun with crisp lettuce, ripe tomato, and tangy pickles. This classic American burger is a timeless favorite for good reason.',
    'ingredients': [
      {
        'name': 'Ground beef (80% lean)',
        'size': '500 g',
      },
      {
        'name': 'Burger buns',
        'size': '4',
      },
      {
        'name': 'Lettuce leaves',
        'size': '4',
      },
      {
        'name': 'Tomato slices',
        'size': '4',
      },
      {
        'name': 'Cheese slices',
        'size': '4',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare patties',
        'description':
            'Divide beef into 4 portions and shape into patties. Season with salt and pepper.',
      },
      {
        'step': '2. Preheat grill',
        'description': 'Heat grill or skillet to medium-high heat.',
      },
      {
        'step': '3. Cook burgers',
        'description':
            'Grill patties for 4-5 minutes each side for medium doneness. Add cheese in the last minute if desired.',
      },
      {
        'step': '4. Toast buns',
        'description':
            'Lightly toast the burger buns on the grill or in a toaster.',
      },
      {
        'step': '5. Assemble and serve',
        'description':
            'Place lettuce on bottom bun, add patty, top with tomato and pickles. Serve with your favorite condiments.',
      },
    ],
    'reviews': [
      {
        'username': '@burgerlover',
        'review':
            'Simple and delicious! Sometimes you just can\'t beat a classic beef burger.',
      },
      {
        'username': '@grillmaster',
        'review':
            'Perfect instructions for a juicy burger. I added some grilled onions - amazing!',
      },
      {
        'username': '@foodiefather',
        'review':
            'My kids\' favorite dinner. We have a weekly burger night now!',
      },
      {
        'username': '@homecook101',
        'review':
            'First time making burgers from scratch and they turned out great. So much better than frozen patties!',
      },
    ]
  },
  {
    'title': 'Mediterranean Grilled Salmon',
    'photo': 'assets/images/recom7.jpg',
    'calories': '420 Cal',
    'time': '30 min',
    'categories': ['Mediterranean', 'Seafood', 'Healthy'],
    'description':
        'Succulent salmon fillet grilled to perfection and topped with a vibrant Mediterranean salsa. Served with a side of lemony couscous, this dish brings the flavors of the Mediterranean to your plate.',
    'ingredients': [
      {
        'name': 'Salmon fillets',
        'size': '4 (150g each)',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1 cup, chopped',
      },
      {
        'name': 'Kalamata olives',
        'size': '1/2 cup, pitted and chopped',
      },
      {
        'name': 'Feta cheese',
        'size': '1/2 cup, crumbled',
      },
      {
        'name': 'Couscous',
        'size': '1 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare salsa',
        'description':
            'Mix chopped tomatoes, olives, feta, red onion, and fresh herbs. Drizzle with olive oil and lemon juice.',
      },
      {
        'step': '2. Season salmon',
        'description':
            'Rub salmon fillets with olive oil, lemon zest, salt, and pepper.',
      },
      {
        'step': '3. Grill salmon',
        'description':
            'Grill salmon for 4-5 minutes per side, or until cooked to your liking.',
      },
      {
        'step': '4. Cook couscous',
        'description':
            'Prepare couscous according to package instructions, adding lemon juice and olive oil for flavor.',
      },
      {
        'step': '5. Serve',
        'description':
            'Plate salmon over couscous, top with Mediterranean salsa, and garnish with fresh herbs.',
      },
    ],
    'reviews': [
      {
        'username': '@seafoodenthusiast',
        'review':
            'This salmon is cooked perfectly! The Mediterranean salsa adds such a fresh, tangy contrast.',
      },
      {
        'username': '@healthyeater',
        'review':
            'A delicious and nutritious meal. I love how colorful and appetizing it looks on the plate.',
      },
      {
        'username': '@quickandeasy',
        'review':
            'Impressed my dinner guests with this recipe. It looks fancy but is actually quite simple to make!',
      },
      {
        'username': '@mediterraneandiet',
        'review':
            'All my favorite Mediterranean flavors in one dish. Will definitely be making this again!',
      },
    ]
  },
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
    'title': 'Vegetarian Chickpea Curry',
    'photo': 'assets/images/recom8.jpg',
    'calories': '380 Cal',
    'time': '35 min',
    'categories': ['Indian', 'Vegetarian', 'Spicy'],
    'description':
        'A hearty and aromatic chickpea curry simmered in a rich tomato and coconut sauce. Packed with protein and bursting with Indian spices, this vegetarian dish is both comforting and satisfying.',
    'ingredients': [
      {
        'name': 'Chickpeas',
        'size': '2 cans',
      },
      {
        'name': 'Coconut milk',
        'size': '1 can',
      },
      {
        'name': 'Diced tomatoes',
        'size': '1 can',
      },
      {
        'name': 'Onion',
        'size': '1, chopped',
      },
      {
        'name': 'Garam masala',
        'size': '2 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Sauté aromatics',
        'description':
            'In a large pot, sauté onion, garlic, and ginger until softened.',
      },
      {
        'step': '2. Add spices',
        'description':
            'Stir in garam masala, cumin, turmeric, and cook until fragrant.',
      },
      {
        'step': '3. Simmer curry',
        'description':
            'Add chickpeas, diced tomatoes, and coconut milk. Simmer for 20 minutes.',
      },
      {
        'step': '4. Season',
        'description':
            'Add salt, pepper, and a squeeze of lemon juice to taste.',
      },
      {
        'step': '5. Serve',
        'description':
            'Serve hot over rice or with naan bread, garnished with fresh cilantro.',
      },
    ],
    'reviews': [
      {
        'username': '@spicelovr',
        'review':
            'So flavorful! I added some extra chili for more heat and it was perfect.',
      },
      {
        'username': '@veggiedelight',
        'review':
            'A satisfying meal that doesn\'t make you miss meat at all. The coconut milk makes it so creamy.',
      },
      {
        'username': '@quickmeals',
        'review':
            'Love how fast this comes together. Great for busy weeknights!',
      },
      {
        'username': '@curryfanatic',
        'review':
            'Authentic flavors and so easy to make. This has become a regular in our meal rotation.',
      },
    ]
  },
  {
    'title': 'Lemon Garlic Shrimp Pasta',
    'photo': 'assets/images/recom9.jpg',
    'calories': '520 Cal',
    'time': '25 min',
    'categories': ['Italian', 'Seafood', 'Quick Meals'],
    'description':
        'A light and zesty pasta dish featuring succulent shrimp tossed with linguine in a lemony garlic sauce. This quick and easy meal is perfect for busy weeknights or elegant enough for entertaining.',
    'ingredients': [
      {
        'name': 'Linguine',
        'size': '300 g',
      },
      {
        'name': 'Large shrimp',
        'size': '500 g, peeled and deveined',
      },
      {
        'name': 'Lemon',
        'size': '1, juiced and zested',
      },
      {
        'name': 'Garlic cloves',
        'size': '4, minced',
      },
      {
        'name': 'Fresh parsley',
        'size': '1/4 cup, chopped',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cook pasta',
        'description':
            'Boil linguine in salted water until al dente. Reserve 1 cup of pasta water before draining.',
      },
      {
        'step': '2. Sauté shrimp',
        'description':
            'In a large skillet, sauté shrimp with garlic and red pepper flakes until pink.',
      },
      {
        'step': '3. Make sauce',
        'description':
            'Add lemon juice, zest, and a splash of pasta water to the skillet. Simmer for 2 minutes.',
      },
      {
        'step': '4. Combine',
        'description':
            'Toss cooked pasta with the shrimp and sauce. Add pasta water as needed for desired consistency.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Stir in fresh parsley and a drizzle of olive oil. Serve hot with grated Parmesan if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@pastaaddict',
        'review':
            'Simple yet so flavorful! The lemon really brightens up the dish.',
      },
      {
        'username': '@quickcook',
        'review':
            'My go-to recipe for a fast and impressive dinner. Always a hit!',
      },
      {
        'username': '@seafoodlover',
        'review':
            'The shrimp came out perfectly cooked. I added some capers for extra zing.',
      },
      {
        'username': '@italianfoodie',
        'review':
            'Light, fresh, and delicious. Tastes like something from a high-end Italian restaurant!',
      },
    ]
  },
  {
    'title': 'Stuffed Bell Peppers',
    'photo': 'assets/images/recom10.jpg',
    'calories': '350 Cal',
    'time': '45 min',
    'categories': ['Vegetarian', 'Low-Carb', 'Dinner'],
    'description':
        'Colorful bell peppers stuffed with a savory mixture of quinoa, black beans, corn, and cheese. These wholesome and flavorful stuffed peppers are a complete meal in themselves, packed with protein and vegetables.',
    'ingredients': [
      {
        'name': 'Bell peppers',
        'size': '4 large',
      },
      {
        'name': 'Quinoa',
        'size': '1 cup, cooked',
      },
      {
        'name': 'Black beans',
        'size': '1 can, drained and rinsed',
      },
      {
        'name': 'Corn kernels',
        'size': '1 cup',
      },
      {
        'name': 'Shredded cheese',
        'size': '1 cup',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare peppers',
        'description':
            'Cut tops off peppers and remove seeds. Place in a baking dish.',
      },
      {
        'step': '2. Make filling',
        'description':
            'Mix cooked quinoa, black beans, corn, half the cheese, and spices in a bowl.',
      },
      {
        'step': '3. Stuff peppers',
        'description': 'Fill each pepper with the quinoa mixture.',
      },
      {
        'step': '4. Bake',
        'description': 'Cover with foil and bake at 375°F for 30-35 minutes.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Uncover, top with remaining cheese, and bake for 5 more minutes until cheese melts. Serve hot.',
      },
    ],
    'reviews': [
      {
        'username': '@healthyeater',
        'review':
            'So filling and nutritious! I love that it\'s a complete meal in one pepper.',
      },
      {
        'username': '@veggiechef',
        'review':
            'Great vegetarian option. I added some diced zucchini to the filling for extra veggies.',
      },
      {
        'username': '@mealprepper',
        'review':
            'These reheat really well. Perfect for making ahead and having throughout the week.',
      },
      {
        'username': '@glutenfreegourmet',
        'review':
            'Naturally gluten-free and delicious! I used a Mexican cheese blend for extra flavor.',
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
  {
    'title': 'Classic Margherita Pizza',
    'photo': 'assets/images/pizza1.jpg',
    'calories': '900 Cal',
    'time': '25 min',
    'categories': ['Italian', 'Vegetarian', 'Pizza'],
    'description':
        'A traditional Neapolitan pizza featuring a thin crust topped with fresh tomatoes, mozzarella cheese, basil, and extra virgin olive oil. This simple yet delicious pizza showcases the flavors of Italy.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'San Marzano tomatoes',
        'size': '200 g, crushed',
      },
      {
        'name': 'Fresh mozzarella',
        'size': '125 g, sliced',
      },
      {
        'name': 'Fresh basil leaves',
        'size': '10-12',
      },
      {
        'name': 'Extra virgin olive oil',
        'size': '2 tbsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare the oven',
        'description':
            'Preheat your oven to the highest temperature, typically 450-500°F (230-260°C).',
      },
      {
        'step': '2. Shape the dough',
        'description':
            'Stretch or roll out the pizza dough into a 12-inch circle on a floured surface.',
      },
      {
        'step': '3. Add toppings',
        'description':
            'Spread crushed tomatoes over the dough, leaving a border for the crust. Add sliced mozzarella.',
      },
      {
        'step': '4. Bake',
        'description':
            'Bake the pizza for 10-12 minutes, or until the crust is golden and the cheese is bubbly.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Remove from oven, add fresh basil leaves, drizzle with olive oil, and serve hot.',
      },
    ],
    'reviews': [
      {
        'username': '@pizzalover',
        'review':
            'Simple perfection! The fresh ingredients really shine in this classic pizza.',
      },
      {
        'username': '@italianfoodie',
        'review':
            'Tastes just like the pizzas I had in Naples. The San Marzano tomatoes make a big difference.',
      },
      {
        'username': '@homechef',
        'review':
            'Easy to make and absolutely delicious. My family\'s new favorite pizza!',
      },
      {
        'username': '@vegetarianeats',
        'review':
            'A great vegetarian option that doesn\'t skimp on flavor. I added some cherry tomatoes for extra freshness.',
      },
    ]
  },
  {
    'title': 'BBQ Chicken Pizza',
    'photo': 'assets/images/pizza2.jpg',
    'calories': '1100 Cal',
    'time': '35 min',
    'categories': ['American', 'Meat', 'Pizza'],
    'description':
        'A tangy and savory pizza topped with BBQ sauce, grilled chicken, red onions, and a blend of cheeses. This American-style pizza offers a delicious twist on the traditional tomato-based pie.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'BBQ sauce',
        'size': '1/2 cup',
      },
      {
        'name': 'Grilled chicken breast',
        'size': '1 cup, diced',
      },
      {
        'name': 'Red onion',
        'size': '1/2, thinly sliced',
      },
      {
        'name': 'Mozzarella and cheddar cheese',
        'size': '1 1/2 cups, shredded',
      }
    ],
    'tutorial': [
      {
        'step': '1. Preheat oven',
        'description':
            'Heat your oven to 450°F (230°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the dough and spread BBQ sauce evenly, leaving a border for the crust.',
      },
      {
        'step': '3. Add toppings',
        'description':
            'Sprinkle cheese over the sauce, then add diced chicken and sliced red onions.',
      },
      {
        'step': '4. Bake the pizza',
        'description':
            'Carefully transfer the pizza to the preheated stone or sheet. Bake for 12-15 minutes until the crust is golden.',
      },
      {
        'step': '5. Serve',
        'description':
            'Remove from oven, let cool for a few minutes, then slice and serve.',
      },
    ],
    'reviews': [
      {
        'username': '@bbqfanatic',
        'review':
            'The perfect combination of tangy BBQ and cheesy goodness. A real crowd-pleaser!',
      },
      {
        'username': '@pizzaexplorer',
        'review':
            'Love this twist on traditional pizza. The red onions add a nice crunch.',
      },
      {
        'username': '@familycook',
        'review':
            'My kids\' favorite pizza night option. I sometimes add pineapple for a Hawaiian twist.',
      },
      {
        'username': '@proteinhunter',
        'review':
            'Great high-protein option. I use a cauliflower crust to make it even healthier.',
      },
    ]
  },
  {
    'title': 'Quattro Formaggi',
    'photo': 'assets/images/pizza3.jpg',
    'calories': '1200 Cal',
    'time': '30 min',
    'categories': ['Italian', 'Vegetarian', 'Pizza'],
    'description':
        'A luxurious four-cheese pizza that\'s a cheese lover\'s dream. This Italian classic combines mozzarella, gorgonzola, parmesan, and goat cheese for a rich and flavorful experience.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Mozzarella cheese',
        'size': '1/2 cup, shredded',
      },
      {
        'name': 'Gorgonzola cheese',
        'size': '1/4 cup, crumbled',
      },
      {
        'name': 'Parmesan cheese',
        'size': '1/4 cup, grated',
      },
      {
        'name': 'Goat cheese',
        'size': '1/4 cup, crumbled',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare oven',
        'description':
            'Preheat your oven to 475°F (245°C) with a pizza stone if available.',
      },
      {
        'step': '2. Shape the dough',
        'description':
            'Roll out the pizza dough into a 12-inch circle on a floured surface.',
      },
      {
        'step': '3. Add cheeses',
        'description':
            'Sprinkle mozzarella evenly over the dough, then add dollops of gorgonzola and goat cheese. Finish with grated parmesan.',
      },
      {
        'step': '4. Bake',
        'description':
            'Transfer the pizza to the oven and bake for 10-12 minutes, until the crust is golden and the cheese is bubbly and slightly browned.',
      },
      {
        'step': '5. Serve',
        'description':
            'Remove from oven, let cool slightly, then slice and serve. Optional: drizzle with honey for a sweet contrast.',
      },
    ],
    'reviews': [
      {
        'username': '@cheesehead',
        'review':
            'Heaven on a plate for cheese lovers! The combination of cheeses is perfectly balanced.',
      },
      {
        'username': '@italiantraveler',
        'review':
            'Reminds me of the quattro formaggi I had in Rome. Authentic and delicious!',
      },
      {
        'username': '@gourmetathome',
        'review':
            'A luxurious treat. I added some fresh figs on top after baking for an extra touch.',
      },
      {
        'username': '@simplecook',
        'review':
            'Surprisingly easy to make and so much better than takeout. Will definitely make again!',
      },
    ]
  },
  {
    'title': 'Vegan Supreme Pizza',
    'photo': 'assets/images/pizza4.jpg',
    'calories': '850 Cal',
    'time': '40 min',
    'categories': ['Vegan', 'Healthy', 'Pizza', 'Vegetarian'],
    'description':
        'A colorful and nutritious vegan pizza loaded with a variety of vegetables and plant-based cheese. This pizza proves that vegan options can be just as delicious and satisfying as traditional pizzas.',
    'ingredients': [
      {
        'name': 'Whole wheat pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Tomato sauce',
        'size': '1/2 cup',
      },
      {
        'name': 'Vegan mozzarella',
        'size': '1 cup, shredded',
      },
      {
        'name': 'Bell peppers',
        'size': '1/2 cup, sliced',
      },
      {
        'name': 'Mushrooms',
        'size': '1/2 cup, sliced',
      }
    ],
    'tutorial': [
      {
        'step': '1. Preheat oven',
        'description':
            'Heat your oven to 450°F (230°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the whole wheat dough and spread tomato sauce evenly.',
      },
      {
        'step': '3. Add toppings',
        'description':
            'Sprinkle vegan cheese over the sauce, then add sliced vegetables of your choice.',
      },
      {
        'step': '4. Bake the pizza',
        'description':
            'Transfer the pizza to the preheated oven and bake for 15-18 minutes until the crust is crispy and toppings are cooked.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Remove from oven, add fresh herbs if desired, slice, and serve hot.',
      },
    ],
    'reviews': [
      {
        'username': '@veganfoodie',
        'review':
            'Finally, a vegan pizza that doesn\'t compromise on flavor! The variety of veggies makes it so satisfying.',
      },
      {
        'username': '@healthnut',
        'review':
            'Love the whole wheat crust option. It adds a nice nutty flavor and extra fiber.',
      },
      {
        'username': '@flexitarian',
        'review':
            'I\'m not vegan but I love this pizza! It\'s a great way to pack in more veggies.',
      },
      {
        'username': '@plantbasedchef',
        'review':
            'Great base recipe. I like to add some nutritional yeast for an extra cheesy flavor.',
      },
    ]
  },
  {
    'title': 'Pepperoni Pizza',
    'photo': 'assets/images/pizza5.jpg',
    'calories': '1050 Cal',
    'time': '25 min',
    'categories': ['American', 'Meat', 'Pizza'],
    'description':
        'A classic American-style pizza topped with zesty tomato sauce, mozzarella cheese, and crispy pepperoni slices. This timeless favorite delivers a perfect balance of flavors and textures.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Tomato sauce',
        'size': '1/2 cup',
      },
      {
        'name': 'Mozzarella cheese',
        'size': '1 1/2 cups, shredded',
      },
      {
        'name': 'Pepperoni slices',
        'size': '3 oz',
      },
      {
        'name': 'Dried oregano',
        'size': '1 tsp',
      }
    ],
    'tutorial': [
      {
        'step': '1. Heat oven',
        'description':
            'Preheat your oven to 475°F (245°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the dough and spread tomato sauce evenly, leaving a border for the crust.',
      },
      {
        'step': '3. Add cheese and pepperoni',
        'description':
            'Sprinkle mozzarella cheese over the sauce, then arrange pepperoni slices on top.',
      },
      {
        'step': '4. Bake',
        'description':
            'Transfer the pizza to the preheated oven and bake for 12-15 minutes until the crust is golden and the cheese is bubbly.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Remove from oven, sprinkle with dried oregano, let cool slightly, then slice and serve.',
      },
    ],
    'reviews': [
      {
        'username': '@pizzaclassicist',
        'review':
            'You can\'t go wrong with a good pepperoni pizza. This recipe nails it!',
      },
      {
        'username': '@familyman',
        'review':
            'A hit with the whole family. We make this almost every Friday for our pizza night.',
      },
      {
        'username': '@crispyedgelover',
        'review':
            'Perfect ratio of sauce to cheese to pepperoni. I like to add a bit of crushed red pepper for some heat.',
      },
      {
        'username': '@easycooking',
        'review':
            'So much better than delivery and surprisingly easy to make at home. Will be my go-to recipe from now on.',
      },
    ]
  },
  {
    'title': 'Mediterranean Veggie Pizza',
    'photo': 'assets/images/pizza6.jpg',
    'calories': '900 Cal',
    'time': '35 min',
    'categories': ['Mediterranean', 'Vegetarian', 'Pizza'],
    'description':
        'A light and fresh pizza inspired by Mediterranean flavors, topped with a variety of colorful vegetables, feta cheese, and a drizzle of olive oil. This pizza offers a delightful and healthier alternative to traditional recipes.',
    'ingredients': [
      {
        'name': 'Thin crust pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      },
      {
        'name': 'Cherry tomatoes',
        'size': '1 cup, halved',
      },
      {
        'name': 'Kalamata olives',
        'size': '1/4 cup, sliced',
      },
      {
        'name': 'Feta cheese',
        'size': '1/2 cup, crumbled',
      }
    ],
   'tutorial': [
      {
        'step': '1. Preheat oven',
        'description':
            'Heat your oven to 450°F (230°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the thin crust dough and brush with olive oil.',
      },
      {
        'step': '3. Add toppings',
        'description':
            'Arrange cherry tomatoes, sliced olives, and any other Mediterranean vegetables of your choice. Sprinkle with crumbled feta.',
      },
      {
        'step': '4. Bake',
        'description':
            'Transfer the pizza to the preheated oven and bake for 12-15 minutes until the crust is crispy and the cheese is slightly melted.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Remove from oven, drizzle with extra olive oil, and sprinkle with fresh herbs like basil or oregano. Slice and serve.',
      },
    ],
    'reviews': [
      {
        'username': '@healthyeater',
        'review':
            'So fresh and flavorful! I love how light yet satisfying this pizza is.',
      },
      {
        'username': '@mediterraneandiet',
        'review':
            'Authentic Mediterranean flavors. I added some artichoke hearts for extra zest.',
      },
      {
        'username': '@summervibes',
        'review':
            'Perfect for a summer dinner. The combination of feta and olives is delicious.',
      },
      {
        'username': '@veggiefan',
        'review':
            'A great way to use up garden vegetables. I love how customizable this recipe is.',
      },
    ]
  },
  {
    'title': 'Buffalo Chicken Pizza',
    'photo': 'assets/images/pizza7.jpg',
    'calories': '1150 Cal',
    'time': '40 min',
    'categories': ['American', 'Spicy', 'Pizza', 'Meat'],
    'description':
        'A spicy and tangy pizza that brings the flavors of buffalo wings to a pizza crust. Topped with buffalo sauce, chicken, and a blend of cheeses, this pizza is perfect for those who like a kick in their meals.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Buffalo sauce',
        'size': '1/2 cup',
      },
      {
        'name': 'Cooked chicken breast',
        'size': '1 cup, shredded',
      },
      {
        'name': 'Mozzarella cheese',
        'size': '1 cup, shredded',
      },
      {
        'name': 'Blue cheese',
        'size': '1/4 cup, crumbled',
      }
    ],
    'tutorial': [
      {
        'step': '1. Preheat oven',
        'description':
            'Heat your oven to 475°F (245°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the dough and spread buffalo sauce evenly over the surface.',
      },
      {
        'step': '3. Add toppings',
        'description':
            'Sprinkle mozzarella cheese, then add shredded chicken tossed in additional buffalo sauce.',
      },
      {
        'step': '4. Bake',
        'description':
            'Transfer the pizza to the preheated oven and bake for 12-15 minutes until the crust is golden and cheese is bubbly.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Remove from oven, sprinkle with crumbled blue cheese, and drizzle with extra buffalo sauce if desired. Slice and serve hot.',
      },
    ],
    'reviews': [
      {
        'username': '@spicylover',
        'review':
            'This pizza packs a punch! Love the combination of tangy buffalo sauce and creamy blue cheese.',
      },
      {
        'username': '@wingfanatic',
        'review':
            'All the flavors of buffalo wings without the mess. This is now my go-to game day pizza.',
      },
      {
        'username': '@creativecook',
        'review':
            'Great base recipe. I added some celery and carrots on top after baking for extra crunch and authenticity.',
      },
      {
        'username': '@cheesehead',
        'review':
            'The blend of mozzarella and blue cheese is perfect. I like to add a ranch drizzle for dipping the crust.',
      },
    ]
  },
  {
    'title': 'Prosciutto and Arugula Pizza',
    'photo': 'assets/images/pizza8.jpg',
    'calories': '980 Cal',
    'time': '30 min',
    'categories': ['Italian', 'Gourmet', 'Pizza'],
    'description':
        'An elegant Italian-inspired pizza featuring a crispy crust topped with prosciutto, fresh arugula, and shaved Parmesan. This pizza offers a perfect balance of salty, peppery, and savory flavors.',
    'ingredients': [
      {
        'name': 'Pizza dough',
        'size': '1 ball',
      },
      {
        'name': 'Olive oil',
        'size': '2 tbsp',
      },
      {
        'name': 'Mozzarella cheese',
        'size': '1 cup, shredded',
      },
      {
        'name': 'Prosciutto',
        'size': '4 oz, thinly sliced',
      },
      {
        'name': 'Fresh arugula',
        'size': '2 cups',
      }
    ],
    'tutorial': [
      {
        'step': '1. Preheat oven',
        'description':
            'Heat your oven to 500°F (260°C) with a pizza stone or baking sheet inside.',
      },
      {
        'step': '2. Prepare the base',
        'description':
            'Roll out the dough, brush with olive oil, and sprinkle with mozzarella cheese.',
      },
      {
        'step': '3. Bake the crust',
        'description':
            'Transfer the pizza to the preheated oven and bake for 8-10 minutes until the crust is golden and cheese is melted.',
      },
      {
        'step': '4. Add prosciutto',
        'description':
            'Remove the pizza from the oven and immediately drape the prosciutto slices over the hot surface.',
      },
      {
        'step': '5. Finish and serve',
        'description':
            'Top with fresh arugula, shave Parmesan cheese over the top, and drizzle with extra virgin olive oil. Slice and serve immediately.',
      },
    ],
    'reviews': [
      {
        'username': '@italianfoodie',
        'review':
            'Bellissimo! This pizza reminds me of the ones I had in Italy. The prosciutto and arugula are a perfect match.',
      },
      {
        'username': '@gourmetathome',
        'review':
            'An elegant pizza that\'s surprisingly easy to make. Great for impressing dinner guests.',
      },
      {
        'username': '@freshingredients',
        'review':
            'The contrast between the warm crust and cool, crisp arugula is delightful. I added some fig jam for a touch of sweetness.',
      },
      {
        'username': '@simplepleasures',
        'review':
            'Sometimes less is more, and this pizza proves it. The quality ingredients really shine through.',
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
    'categories': ['Dessert'],
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
  {
    'title': 'Cinnamon Roll Waffles',
    'photo': 'assets/images/sweetfood3.jpg',
    'calories': '650 Cal',
    'time': '35 min',
    'categories': ['Breakfast', 'Dessert'],
    'description':
        'A delightful fusion of cinnamon rolls and waffles. These crispy-on-the-outside, soft-on-the-inside waffles are swirled with cinnamon sugar and topped with a luscious cream cheese glaze. It\'s the perfect indulgent breakfast for cinnamon roll lovers.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '2 cups',
      },
      {
        'name': 'Milk',
        'size': '1 3/4 cups',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Brown sugar',
        'size': '1/4 cup',
      },
      {
        'name': 'Ground cinnamon',
        'size': '2 tbsp',
      },
      {
        'name': 'Cream cheese',
        'size': '133 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Prepare waffle batter',
        'description':
            'Mix flour, baking powder, salt, milk, eggs, and melted butter in a large bowl until smooth.',
      },
      {
        'step': '2. Make cinnamon swirl',
        'description':
            'In a separate bowl, mix brown sugar and cinnamon. Pour into a ziplock bag.',
      },
      {
        'step': '3. Cook waffles',
        'description':
            'Preheat waffle iron. Pour batter, snip corner of cinnamon sugar bag and swirl over batter. Close iron and cook until golden.',
      },
      {
        'step': '4. Prepare glaze',
        'description':
            'Mix softened cream cheese, powdered sugar, milk, and vanilla until smooth.',
      },
      {
        'step': '5. Serve',
        'description':
            'Drizzle warm waffles with cream cheese glaze. Serve immediately for the best taste and texture.',
      },
    ],
    'reviews': [
      {
        'username': '@waffleenthusiast',
        'review':
            'These waffles are game-changers! All the flavors of a cinnamon roll in a crispy waffle form. Absolutely delicious!',
      },
      {
        'username': '@sweetbreakfastlover',
        'review':
            'Made these for a family brunch and everyone was impressed. The cream cheese glaze takes it to another level.',
      },
      {
        'username': '@lazysundaymornings',
        'review':
            'Perfect for a cozy weekend breakfast. The house smelled amazing while cooking these!',
      },
      {
        'username': '@balancedindulgence',
        'review':
            'A bit decadent but so worth it as an occasional treat. I added some chopped pecans for extra crunch.',
      },
    ]
  },
  {
    'title': 'Berry Cheesecake Parfait',
    'photo': 'assets/images/sweetfood4.jpg',
    'calories': '420 Cal',
    'time': '20 min',
    'categories': ['Dessert'],
    'description':
        'A light and refreshing dessert featuring layers of creamy cheesecake filling, crunchy graham cracker crumbs, and fresh mixed berries. This no-bake treat is perfect for warm summer days or as an elegant finish to any meal.',
    'ingredients': [
      {
        'name': 'Cream cheese',
        'size': '226 g',
      },
      {
        'name': 'Heavy cream',
        'size': '1 cup',
      },
      {
        'name': 'Powdered sugar',
        'size': '1/2 cup',
      },
      {
        'name': 'Graham crackers',
        'size': '1 cup, crushed',
      },
      {
        'name': 'Mixed berries',
        'size': '2 cups',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare cheesecake filling',
        'description':
            'Beat cream cheese, heavy cream, and powdered sugar until smooth and fluffy.',
      },
      {
        'step': '2. Crush graham crackers',
        'description':
            'Place graham crackers in a zip-top bag and crush with a rolling pin.',
      },
      {
        'step': '3. Wash and prepare berries',
        'description':
            'Rinse mixed berries and pat dry. Slice larger berries if needed.',
      },
      {
        'step': '4. Assemble parfaits',
        'description':
            'In glasses, layer graham cracker crumbs, cheesecake filling, and berries. Repeat layers.',
      },
      {
        'step': '5. Chill and serve',
        'description':
            'Refrigerate parfaits for at least 1 hour before serving. Garnish with additional berries if desired.',
      },
    ],
    'reviews': [
      {
        'username': '@dessertqueen',
        'review':
            'So easy to make and absolutely delicious! The perfect balance of creamy, crunchy, and fruity.',
      },
      {
        'username': '@healthysweets',
        'review':
            'Love that this uses fresh berries. I substituted low-fat cream cheese and it was still amazing.',
      },
      {
        'username': '@easypeasyrecipes',
        'review':
            'No-bake and ready in no time! This has become my go-to dessert for summer gatherings.',
      },
      {
        'username': '@fancyfoodie',
        'review':
            'Served these at a dinner party in elegant glasses. They looked impressive and tasted even better!',
      },
    ]
  },
  {
    'title': 'Caramel Apple French Toast',
    'photo': 'assets/images/sweetfood5.jpg',
    'calories': '580 Cal',
    'time': '40 min',
    'categories': ['Dessert', 'Breakfast'],
    'description':
        'A decadent twist on classic French toast, featuring thick slices of bread soaked in a rich custard, topped with caramelized apples and a homemade caramel sauce. This indulgent breakfast is perfect for special occasions or when you want to treat yourself.',
    'ingredients': [
      {
        'name': 'Thick bread slices',
        'size': '6',
      },
      {
        'name': 'Eggs',
        'size': '4',
      },
      {
        'name': 'Milk',
        'size': '1 cup',
      },
      {
        'name': 'Apples, sliced',
        'size': '2',
      },
      {
        'name': 'Brown sugar',
        'size': '1/2 cup',
      },
      {
        'name': 'Heavy cream',
        'size': '1/4 cup',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare custard',
        'description':
            'Whisk together eggs, milk, vanilla extract, and a pinch of cinnamon in a shallow dish.',
      },
      {
        'step': '2. Soak bread',
        'description':
            'Dip each bread slice in the custard mixture, allowing it to soak for a few seconds on each side.',
      },
      {
        'step': '3. Cook French toast',
        'description':
            'Heat butter in a skillet and cook soaked bread until golden brown on both sides.',
      },
      {
        'step': '4. Caramelize apples',
        'description':
            'In another pan, cook sliced apples with butter and brown sugar until soft and caramelized.',
      },
      {
        'step': '5. Make caramel sauce',
        'description':
            'In a small saucepan, heat brown sugar and cream until it forms a smooth caramel sauce.',
      },
      {
        'step': '6. Assemble and serve',
        'description':
            'Top French toast with caramelized apples and drizzle with caramel sauce. Serve immediately.',
      },
    ],
    'reviews': [
      {
        'username': '@breakfastchamp',
        'review':
            'This is the ultimate indulgent breakfast! The caramelized apples take it to another level.',
      },
      {
        'username': '@sweettooth',
        'review':
            'Absolutely divine! It\'s like having dessert for breakfast, but so worth it.',
      },
      {
        'username': '@weekendcook',
        'review':
            'Made this for a family brunch and everyone raved about it. Will definitely make again!',
      },
      {
        'username': '@foodieforlife',
        'review':
            'The homemade caramel sauce is a game-changer. I could eat this every day!',
      },
    ]
  },
  {
    'title': 'Matcha Green Tea Mochi',
    'photo': 'assets/images/sweetfood6.jpg',
    'calories': '180 Cal',
    'time': '1 hour',
    'categories': ['Dessert'],
    'description':
        'A Japanese-inspired sweet treat featuring chewy mochi (rice cake) infused with earthy matcha green tea flavor. These bite-sized desserts are not only delicious but also visually appealing with their vibrant green color. Perfect for matcha lovers and those looking to try something unique.',
    'ingredients': [
      {
        'name': 'Glutinous rice flour',
        'size': '1 cup',
      },
      {
        'name': 'Matcha powder',
        'size': '2 tbsp',
      },
      {
        'name': 'Sugar',
        'size': '1/2 cup',
      },
      {
        'name': 'Water',
        'size': '3/4 cup',
      },
      {
        'name': 'Cornstarch',
        'size': '1/4 cup',
      },
    ],
    'tutorial': [
      {
        'step': '1. Mix dry ingredients',
        'description':
            'In a microwave-safe bowl, whisk together glutinous rice flour, matcha powder, and sugar.',
      },
      {
        'step': '2. Add water',
        'description':
            'Gradually add water to the dry ingredients, stirring until a smooth batter forms.',
      },
      {
        'step': '3. Cook mochi',
        'description':
            'Microwave the mixture in 30-second intervals, stirring between each, until the mochi becomes translucent and sticky (about 2-3 minutes total).',
      },
      {
        'step': '4. Cool and shape',
        'description':
            'Let the mochi cool slightly. Dust a work surface with cornstarch and turn out the mochi. Divide and shape into small balls.',
      },
      {
        'step': '5. Serve or store',
        'description':
            'Serve immediately or store in an airtight container with additional cornstarch to prevent sticking.',
      },
    ],
    'reviews': [
      {
        'username': '@matchalover',
        'review':
            'The perfect blend of chewy texture and earthy matcha flavor. I\'m addicted!',
      },
      {
        'username': '@japanesefoodie',
        'review':
            'Tastes just like the mochi I had in Japan. Great recipe for making it at home!',
      },
      {
        'username': '@adventurouseater',
        'review':
            'First time trying mochi and I love it! The matcha flavor is subtle but delicious.',
      },
      {
        'username': '@healthydesserts',
        'review':
            'Love that these are naturally gluten-free. A unique dessert that\'s not too sweet.',
      },
    ]
  },
  {
    'title': 'Lemon Lavender Scones',
    'photo': 'assets/images/sweetfood7.jpg',
    'calories': '320 Cal',
    'time': '45 min',
    'categories': ['Dessert', 'Breakfast'],
    'description':
        'Delicate and fragrant scones infused with zesty lemon and aromatic lavender. These light, flaky pastries are perfect for a sophisticated afternoon tea or a special breakfast treat. The combination of citrus and floral notes creates a unique and refreshing flavor profile.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '2 cups',
      },
      {
        'name': 'Sugar',
        'size': '1/3 cup',
      },
      {
        'name': 'Butter, cold and cubed',
        'size': '1/2 cup',
      },
      {
        'name': 'Heavy cream',
        'size': '1/2 cup',
      },
      {
        'name': 'Lemon zest',
        'size': '2 tbsp',
      },
      {
        'name': 'Dried lavender',
        'size': '1 tbsp',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare dry ingredients',
        'description':
            'In a large bowl, whisk together flour, sugar, baking powder, and salt.',
      },
      {
        'step': '2. Add butter',
        'description':
            'Cut in cold butter using a pastry cutter or your fingers until the mixture resembles coarse crumbs.',
      },
      {
        'step': '3. Mix in flavors',
        'description':
            'Stir in lemon zest and dried lavender. Gradually add heavy cream, mixing until a soft dough forms.',
      },
      {
        'step': '4. Shape and cut',
        'description':
            'Turn dough onto a floured surface, pat into a circle, and cut into wedges.',
      },
      {
        'step': '5. Bake',
        'description':
            'Place scones on a baking sheet and brush with cream. Bake at 400°F (200°C) for 15-18 minutes or until golden brown.',
      },
      {
        'step': '6. Glaze and serve',
        'description':
            'Let cool slightly, then drizzle with a lemon glaze if desired. Serve warm.',
      },
    ],
    'reviews': [
      {
        'username': '@teatimequeen',
        'review':
            'These scones are a dream! The lemon and lavender combination is so elegant and delicious.',
      },
      {
        'username': '@bakingnovice',
        'review':
            'Surprisingly easy to make and they turned out perfectly flaky. Will definitely make again!',
      },
      {
        'username': '@brunchhost',
        'review':
            'Served these at a brunch party and they were a hit. Everyone loved the unique flavor.',
      },
      {
        'username': '@aromatherapylover',
        'review':
            'The lavender adds such a lovely, subtle floral note. These are my new favorite scones!',
      },
    ]
  },
  {
    'title': 'Nutella-Stuffed Churros',
    'photo': 'assets/images/sweetfood8.jpg',
    'calories': '420 Cal',
    'time': '50 min',
    'categories': ['Dessert'],
    'description':
        'A decadent twist on the classic Spanish treat, these churros are crispy on the outside, soft on the inside, and filled with creamy Nutella. Coated in cinnamon sugar, they\'re an irresistible indulgence perfect for satisfying your sweet tooth.',
    'ingredients': [
      {
        'name': 'Water',
        'size': '1 cup',
      },
      {
        'name': 'All-purpose flour',
        'size': '1 cup',
      },
      {
        'name': 'Eggs',
        'size': '3',
      },
      {
        'name': 'Nutella',
        'size': '1/2 cup',
      },
      {
        'name': 'Sugar',
        'size': '1/2 cup',
      },
      {
        'name': 'Ground cinnamon',
        'size': '1 tbsp',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare dough',
        'description':
            'Boil water with salt and butter. Add flour, stirring vigorously until a smooth ball forms. Let cool slightly, then beat in eggs one at a time.',
      },
      {
        'step': '2. Pipe and freeze',
        'description':
            'Pipe 4-inch strips onto a baking sheet. Freeze for 15 minutes to firm up.',
      },
      {
        'step': '3. Prepare Nutella',
        'description':
            'Spoon Nutella into a piping bag fitted with a small round tip.',
      },
      {
        'step': '4. Fry churros',
        'description':
            'Deep fry the frozen churros in batches until golden brown and crispy.',
      },
      {
        'step': '5. Fill and coat',
        'description':
            'While still warm, pipe Nutella into the center of each churro. Roll in cinnamon sugar mixture.',
      },
      {
        'step': '6. Serve',
        'description':
            'Serve immediately while still warm for the best taste and texture.',
      },
    ],
    'reviews': [
      {
        'username': '@chocoholicdreams',
        'review':
            'These are dangerously delicious! The Nutella filling takes churros to a whole new level.',
      },
      {
        'username': '@dessertmaster',
        'review':
            'Worth every calorie! Crispy, creamy, and perfectly sweet. A new favorite in our house.',
      },
      {
        'username': '@foodieadventures',
        'review':
            'Made these for a party and they disappeared in minutes. Everyone was raving about them!',
      },
      {
        'username': '@sweettoothed',
        'review':
            'The perfect indulgence. I could eat these every day (but probably shouldn\'t!).',
      },
    ]
  },
  {
    'title': 'Mango Sticky Rice',
    'photo': 'assets/images/sweetfood9.jpg',
    'calories': '350 Cal',
    'time': '40 min',
    'categories': ['Dessert', 'Dinner'],
    'description':
        'A popular Thai dessert featuring sweet, ripe mango served with sticky rice soaked in a rich coconut milk sauce. This tropical treat is refreshing, subtly sweet, and beautifully balances flavors and textures.',
    'ingredients': [
      {
        'name': 'Glutinous rice',
        'size': '1 cup',
      },
      {
        'name': 'Coconut milk',
        'size': '1 cup',
      },
      {
        'name': 'Sugar',
        'size': '1/4 cup',
      },
      {
        'name': 'Salt',
        'size': '1/4 tsp',
      },
      {
        'name': 'Ripe mangoes',
        'size': '2',
      },
      {
        'name': 'Sesame seeds',
        'size': '1 tbsp',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare rice',
        'description':
            'Soak glutinous rice for at least 4 hours or overnight. Steam for 20-25 minutes until tender.',
      },
      {
        'step': '2. Make coconut sauce',
        'description':
            'In a saucepan, heat coconut milk with sugar and salt until sugar dissolves. Do not boil.',
      },
      {
        'step': '3. Combine rice and sauce',
        'description':
            'Pour half of the warm coconut sauce over the cooked rice. Stir and let sit for 30 minutes to absorb.',
      },
      {
        'step': '4. Prepare mango',
        'description': 'Peel and slice ripe mangoes.',
      },
      {
        'step': '5. Assemble',
        'description':
            'Place a portion of sticky rice on a plate, arrange mango slices beside it. Drizzle with remaining coconut sauce.',
      },
      {
        'step': '6. Garnish and serve',
        'description':
            'Sprinkle with toasted sesame seeds. Serve immediately while rice is still warm.',
      },
    ],
    'reviews': [
      {
        'username': '@tropicalfoodie',
        'review':
            'Tastes just like what I had in Thailand! The mango and coconut flavors are perfect together.',
      },
      {
        'username': '@dessertexplorer',
        'review':
            'A refreshing change from heavy desserts. Love the combination of textures and flavors.',
      },
      {
        'username': '@healthysweets',
        'review':
            'Such a satisfying dessert without being too sweet. The fresh mango makes all the difference.',
      },
      {
        'username': '@worldcuisineathome',
        'review':
            'Easy to make and so delicious. It\'s become a regular in our dessert rotation!',
      },
    ]
  },
  {
    'title': 'Red Velvet Cheesecake Brownies',
    'photo': 'assets/images/sweetfood10.jpg',
    'calories': '380 Cal',
    'time': '55 min',
    'categories': ['Dessert'],
    'description':
        'A decadent fusion dessert combining the rich flavor of red velvet cake, the fudgy texture of brownies, and the creamy indulgence of cheesecake. These visually stunning treats are perfect for special occasions or when you need a luxurious chocolate fix.',
    'ingredients': [
      {
        'name': 'All-purpose flour',
        'size': '3/4 cup',
      },
      {
        'name': 'Cocoa powder',
        'size': '2 tbsp',
      },
      {
        'name': 'Butter',
        'size': '1/2 cup',
      },
      {
        'name': 'Sugar',
        'size': '1 cup',
      },
      {
        'name': 'Eggs',
        'size': '2',
      },
      {
        'name': 'Red food coloring',
        'size': '1 tbsp',
      },
      {
        'name': 'Cream cheese',
        'size': '226 g',
      },
    ],
    'tutorial': [
      {
        'step': '1. Prepare brownie batter',
        'description':
            'Mix flour, cocoa, melted butter, sugar, eggs, and red food coloring until smooth.',
      },
      {
        'step': '2. Make cheesecake mixture',
        'description':
            'Beat cream cheese, sugar, egg, and vanilla until creamy.',
      },
      {
        'step': '3. Layer the batter',
        'description':
            'Pour 2/3 of the brownie batter into a lined baking pan. Top with cheesecake mixture.',
      },
      {
        'step': '4. Create swirls',
        'description':
            'Drop spoonfuls of remaining brownie batter on top. Swirl with a knife for a marbled effect.',
      },
      {
        'step': '5. Bake',
        'description':
            'Bake at 350°F (175°C) for 30-35 minutes until set but still slightly jiggly in the center.',
      },
      {
        'step': '6. Cool and serve',
        'description':
            'Let cool completely, then refrigerate for at least 2 hours before cutting into squares.',
      },
    ],
    'reviews': [
      {
        'username': '@chocolateaddict',
        'review':
            'These are heavenly! The perfect balance of chocolate and cheesecake flavors.',
      },
      {
        'username': '@bakingqueen',
        'review':
            'Absolutely stunning and delicious. They were the star of my dessert table!',
      },
      {
        'username': '@redvelvetlover',
        'review':
            'Best red velvet dessert I\'ve ever had. The cheesecake swirl takes it to another level.',
      },
      {
        'username': '@dessertphotographer',
        'review':
            'Not only do these taste amazing, but they also look gorgeous. Perfect for Instagram!',
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
    'categories': ['Spicy', 'Appetizer', 'Bacon'],
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
      {'name': 'White rum', 'size': '56 g'},
      {'name': 'Fresh mint leaves', 'size': '8-10'},
      {'name': 'Lime juice', 'size': '28 g'},
      {'name': 'Simple syrup', 'size': '21 g'},
      {'name': 'Soda water', 'size': '56 g'}
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
      {'name': 'Tequila', 'size': '56 g'},
      {'name': 'Fresh mango puree', 'size': '42 g'},
      {'name': 'Lime juice', 'size': '28 g'},
      {'name': 'Agave nectar', 'size': '14 g'},
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
      {'name': 'Gin', 'size': '56 g'},
      {'name': 'Fresh cucumber juice', 'size': '28 g'},
      {'name': 'Lime juice', 'size': '21 g'},
      {'name': 'Simple syrup', 'size': '14 g'},
      {'name': 'Fresh mint leaves', 'size': '6-8'},
      {'name': 'Soda water', 'size': '56 g'},
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
  {
    'title': 'Grilled Salmon with Dill Sauce',
    'photo': 'assets/images/seafood2.jpg',
    'calories': '420 Cal',
    'time': '30 min',
    'categories': ['Seafood', 'Grilled'],
    'description':
        'Succulent grilled salmon fillets paired with a creamy dill sauce. This healthy and flavorful dish is perfect for a summer barbecue or a quick weeknight dinner.',
    'ingredients': [
      {'name': 'Salmon fillets', 'size': '600 g'},
      {'name': 'Greek yogurt', 'size': '200 g'},
      {'name': 'Fresh dill, chopped', 'size': '15 g'},
      {'name': 'Lemon juice', 'size': '30 ml'},
      {'name': 'Olive oil', 'size': '30 ml'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare grill',
        'description': 'Preheat grill to medium-high heat.'
      },
      {
        'step': '2. Season salmon',
        'description':
            'Brush salmon with olive oil and season with salt and pepper.'
      },
      {
        'step': '3. Grill salmon',
        'description':
            'Grill salmon for 4-5 minutes per side, or until cooked through.'
      },
      {
        'step': '4. Make sauce',
        'description':
            'Mix Greek yogurt, chopped dill, lemon juice, salt, and pepper.'
      },
      {
        'step': '5. Serve',
        'description':
            'Serve grilled salmon with a dollop of dill sauce on top.'
      }
    ],
    'reviews': [
      {
        'username': '@healthyeater',
        'review':
            'Delicious and nutritious! The dill sauce complements the salmon perfectly.'
      },
      {
        'username': '@grillmaster',
        'review':
            'Easy to grill and the sauce adds a great flavor boost. A summer favorite!'
      },
      {
        'username': '@quickcook',
        'review':
            'Love how fast this comes together. Great for busy weeknights.'
      },
      {
        'username': '@flavorfanatic',
        'review':
            'The dill sauce is a game-changer. I could eat this every week!'
      }
    ]
  },
  {
    'title': 'Spicy Tuna Poke Bowl',
    'photo': 'assets/images/seafood3.jpg',
    'calories': '380 Cal',
    'time': '20 min',
    'categories': ['Seafood', 'Asian', 'Raw'],
    'description':
        'A refreshing and colorful Hawaiian-inspired dish featuring cubes of raw tuna marinated in a spicy sauce, served over rice with fresh vegetables.',
    'ingredients': [
      {'name': 'Sushi-grade tuna', 'size': '400 g'},
      {'name': 'Sushi rice', 'size': '300 g'},
      {'name': 'Soy sauce', 'size': '45 ml'},
      {'name': 'Sriracha sauce', 'size': '15 ml'},
      {'name': 'Sesame oil', 'size': '10 ml'},
      {'name': 'Cucumber, diced', 'size': '100 g'},
      {'name': 'Avocado, sliced', 'size': '100 g'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare rice',
        'description':
            'Cook sushi rice according to package instructions and let it cool.'
      },
      {'step': '2. Cut tuna', 'description': 'Cut tuna into 1 cm cubes.'},
      {
        'step': '3. Make marinade',
        'description': 'Mix soy sauce, sriracha, and sesame oil in a bowl.'
      },
      {
        'step': '4. Marinate tuna',
        'description': 'Add tuna to the marinade and gently toss to coat.'
      },
      {
        'step': '5. Assemble bowl',
        'description':
            'Place rice in bowls, top with marinated tuna, cucumber, and avocado.'
      }
    ],
    'reviews': [
      {
        'username': '@sushilover',
        'review':
            'Restaurant-quality poke at home! Fresh, delicious, and so easy to make.'
      },
      {
        'username': '@healthytrends',
        'review': 'A perfect light meal. I add edamame for extra protein.'
      },
      {
        'username': '@spicefanatic',
        'review':
            'Love the kick from the sriracha. Adjust to your spice preference!'
      },
      {
        'username': '@quicklunch',
        'review':
            'My go-to for a fast, fresh lunch. Feels like a treat every time.'
      }
    ]
  },
  {
    'title': 'Creamy Seafood Chowder',
    'photo': 'assets/images/seafood4.jpg',
    'calories': '480 Cal',
    'time': '45 min',
    'categories': ['Seafood', 'Soup', 'Comfort Food'],
    'description':
        'A rich and hearty chowder loaded with a variety of seafood, potatoes, and vegetables in a creamy broth. Perfect for cold days or when you\'re craving a comforting bowl of soup.',
    'ingredients': [
      {'name': 'Mixed seafood (shrimp, cod, clams)', 'size': '500 g'},
      {'name': 'Potatoes, diced', 'size': '300 g'},
      {'name': 'Onion, chopped', 'size': '100 g'},
      {'name': 'Celery, chopped', 'size': '100 g'},
      {'name': 'Heavy cream', 'size': '250 ml'},
      {'name': 'Fish stock', 'size': '500 ml'},
      {'name': 'Butter', 'size': '50 g'},
      {'name': 'All-purpose flour', 'size': '30 g'}
    ],
    'tutorial': [
      {
        'step': '1. Sauté vegetables',
        'description':
            'In a large pot, sauté onion and celery in butter until soft.'
      },
      {
        'step': '2. Make roux',
        'description':
            'Add flour to the pot and cook for 1 minute, stirring constantly.'
      },
      {
        'step': '3. Add liquids',
        'description':
            'Gradually add fish stock and cream, stirring to prevent lumps.'
      },
      {
        'step': '4. Cook potatoes',
        'description':
            'Add diced potatoes and simmer until tender, about 15 minutes.'
      },
      {
        'step': '5. Add seafood',
        'description':
            'Add mixed seafood and cook until just done, about 5 minutes. Season to taste.'
      }
    ],
    'reviews': [
      {
        'username': '@soupmaster',
        'review':
            'So creamy and satisfying! The mix of seafood makes every bite interesting.'
      },
      {
        'username': '@comfortfoodie',
        'review':
            'Perfect for a chilly evening. I add some corn for extra sweetness.'
      },
      {
        'username': '@seafoodfiend',
        'review':
            'Restaurant quality chowder at home. Will definitely make again!'
      },
      {
        'username': '@easycooking',
        'review':
            'Simpler than I expected and so delicious. A new family favorite.'
      }
    ]
  },
  {
    'title': 'Mediterranean Grilled Octopus',
    'photo': 'assets/images/seafood5.jpg',
    'calories': '220 Cal',
    'time': '1 hr 30 min',
    'categories': ['Seafood', 'Mediterranean', 'Grilled'],
    'description':
        'Tender grilled octopus seasoned with Mediterranean herbs and lemon. This impressive dish is surprisingly simple to prepare and perfect for seafood enthusiasts looking to try something new.',
    'ingredients': [
      {'name': 'Octopus, cleaned', 'size': '1 kg'},
      {'name': 'Olive oil', 'size': '60 ml'},
      {'name': 'Lemon juice', 'size': '45 ml'},
      {'name': 'Garlic cloves, minced', 'size': '15 g'},
      {'name': 'Fresh oregano, chopped', 'size': '10 g'},
      {'name': 'Red wine vinegar', 'size': '30 ml'}
    ],
    'tutorial': [
      {
        'step': '1. Prepare octopus',
        'description':
            'Simmer octopus in salted water for 45-60 minutes until tender. Let cool.'
      },
      {
        'step': '2. Make marinade',
        'description':
            'Mix olive oil, lemon juice, garlic, oregano, and vinegar in a bowl.'
      },
      {
        'step': '3. Marinate',
        'description':
            'Cut cooled octopus into pieces and marinate for 30 minutes.'
      },
      {
        'step': '4. Grill',
        'description':
            'Grill octopus over high heat for 3-4 minutes per side until charred.'
      },
      {
        'step': '5. Serve',
        'description':
            'Drizzle with extra marinade and serve with lemon wedges.'
      }
    ],
    'reviews': [
      {
        'username': '@adventurouseater',
        'review': 'Wow! Never thought I could make octopus this good at home.'
      },
      {
        'username': '@greekcuisine',
        'review':
            'Just like in Greece! The marinade is key for authentic flavor.'
      },
      {
        'username': '@grillking',
        'review': 'Perfectly tender with a nice char. A showstopper at my BBQ!'
      },
      {
        'username': '@healthyprotein',
        'review':
            'Great lean protein option. I serve it with a Greek salad for a complete meal.'
      }
    ]
  },
];
