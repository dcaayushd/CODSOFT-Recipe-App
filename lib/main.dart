import 'package:flutter/material.dart';
import 'package:recipo_recipe_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
            title: 'Recipe App',
            theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
          home: const HomeScreen(),
    );

  }
}
