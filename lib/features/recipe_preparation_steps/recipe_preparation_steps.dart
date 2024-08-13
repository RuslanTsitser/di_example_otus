import 'package:di_example/core/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipePreparationSteps extends StatelessWidget {
  const RecipePreparationSteps({
    super.key,
    required this.recipeModel,
  });
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text('Recipe Preparation Steps Widget'),
    );
  }
}
