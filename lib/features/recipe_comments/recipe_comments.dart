import 'package:di_example/core/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeComments extends StatelessWidget {
  const RecipeComments({super.key, required this.recipeModel});
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text('Recipe Comments'),
    );
  }
}
