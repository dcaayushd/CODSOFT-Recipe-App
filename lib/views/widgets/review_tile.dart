import 'package:flutter/material.dart';
import '../../models/core/recipe.dart';

class ReviewTile extends StatelessWidget {
  final Review data;
  const ReviewTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey[350] ?? Colors.grey, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Review username
          Text(
            data.username,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'inter',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          // user review
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              data.review,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                  height: 150 / 100),
            ),
          )
        ],
      ),
    );
  }
}
