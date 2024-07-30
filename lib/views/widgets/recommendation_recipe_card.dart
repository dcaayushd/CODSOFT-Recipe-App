import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/core/recipe.dart';
import '../screens/recipe_detail_screen.dart';

class RecommendationRecipeCard extends StatelessWidget {
  final Recipe data;
  final bool useWhiteText;

  const RecommendationRecipeCard({super.key, required this.data, this.useWhiteText = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RecipeDetailScreen(data: data)));
      },
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Photo
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: AssetImage(data.photo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Recipe title
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 8),
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                data.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'inter',
                  color: useWhiteText ? Colors.white : Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Recipe calories and time
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/fire-filled.svg',
                  color: useWhiteText ? Colors.white : Colors.black,
                  width: 12,
                  height: 12,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Text(
                    data.calories,
                    style: TextStyle(
                      fontSize: 10,
                      color: useWhiteText ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.alarm,
                  size: 12,
                  color: useWhiteText ? Colors.white : Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Text(
                    data.time,
                    style: TextStyle(
                      fontSize: 10,
                      color: useWhiteText ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
