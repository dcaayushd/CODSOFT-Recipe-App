import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final ImageProvider image;

  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width - 16 - 16) / 2) - 8,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // Image
        image: DecorationImage(image: image, fit: BoxFit.cover),
      ),
      child: Container(
        width: 164,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFF062D2B).withOpacity(0.40),
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'inter'),
        ),
      ),
    );
  }
}
