import 'package:flutter/material.dart';
import 'package:recipe_app_devcamp/widgets/my_recipe.dart';

class MyRecipeHome extends StatefulWidget {
  const MyRecipeHome({super.key});

  @override
  State<MyRecipeHome> createState() => _MyRecipeHomeState();
}

class _MyRecipeHomeState extends State<MyRecipeHome> {
  @override
  Widget build(BuildContext context) {
    return const MyRecipe();
  }
}
