import 'package:recipo/models/core/recipe.dart';

class RecipeHelper {
  static List<Recipe> featuredRecipe = (featuredRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
          ))
      .toList();

  static List<Recipe> recommendationRecipe = (recommendationRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
          ))
      .toList();

  static List<Recipe> newlyPostedRecipe = (newlyPostedRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
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
                reviews: Review.toList(
                    data['reviews'] as List<Map<String, Object?>>? ?? []),
                tutorial: TutorialStep.toList(
                    data['tutorial'] as List<Map<String, Object?>>? ?? []),
                ingredients: Ingredient.toList(
                    data['ingredients'] as List<Map<String, Object?>>? ?? []),
              ))
          .toList();

  // static Recipe popularRecipe = Recipe(
  //   title: popularRecipeRawData['title'] as String? ?? '',
  //   photo: popularRecipeRawData['photo'] as String? ?? '',
  //   calories: popularRecipeRawData['calories'] as String? ?? '',
  //   time: popularRecipeRawData['time'] as String? ?? '',
  //   description: popularRecipeRawData['description'] as String? ?? '',
  //   reviews: Review.toList(
  //       popularRecipeRawData['reviews'] as List<Map<String, Object?>>? ?? []),
  //   tutorial: TutorialStep.toList(
  //       popularRecipeRawData['tutorial'] as List<Map<String, Object?>>? ?? []),
  //   ingredients: Ingredient.toList(
  //       popularRecipeRawData['ingredients'] as List<Map<String, Object?>>? ??
  //           []),
  // );

  static List<Recipe> popularRecipes = popularRecipeRawData
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
          ))
      .toList();

  static List<Recipe> searchResultRecipe = (recipeSearchResultRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
          ))
      .toList();

  static List<Recipe> bookmarkedRecipe = (bookmarkedRecipeRawData)
      .map((data) => Recipe(
            title: data['title'] as String? ?? '',
            photo: data['photo'] as String? ?? '',
            calories: data['calories'] as String? ?? '',
            time: data['time'] as String? ?? '',
            description: data['description'] as String? ?? '',
            reviews: Review.toList(
                data['reviews'] as List<Map<String, Object?>>? ?? []),
            tutorial: TutorialStep.toList(
                data['tutorial'] as List<Map<String, Object?>>? ?? []),
            ingredients: Ingredient.toList(
                data['ingredients'] as List<Map<String, Object?>>? ?? []),
          ))
      .toList();
}

var popularRecipeRawData = [
  {
    'title': 'Green Healthy Meat & Vegetable Pizza.',
    'photo': 'assets/images/popularnowpizza.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
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
    ],
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 min',
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
    'title': 'Brown Chopstick Bowl',
    'photo': 'assets/images/recom2.jpg',
    'calories': '1500 Cal',
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
];

var featuredRecipeRawData = [
  {
    'title': 'Green Leafy Vegetable Dish.',
    'photo': 'assets/images/featured2.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
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
    'title': 'Pancake with Honey.',
    'photo': 'assets/images/sweetfood1.jpg',
    'calories': '1500 Cal',
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

var popularRecipeKeyword = [
  'Noodles',
  'Ice Cream',
  'Chicken',
  'Spaghetti',
  'Pizza',
  'Nugget',
  'Kwetiaw',
  'Nasi Goreng',
  'Rujak',
  'Bakmi'
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
