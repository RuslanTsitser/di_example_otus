import 'package:di_example/core/models/recipe_model.dart';
import 'package:di_example/features/recipe_comments/recipe_comments.dart';
import 'package:di_example/features/recipe_details/recipe_details.dart';
import 'package:di_example/features/recipe_details/recipe_ingredients.dart';
import 'package:di_example/features/recipe_preparation_steps/recipe_preparation_steps.dart';
import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const recipeModel = RecipeModel(
      id: '1',
      title: 'Recipe Title',
      imageUrl: 'https://via.placeholder.com/150',
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('Recipe Details Screen'),
          ),
          SliverList.list(
            children: const [
              RecipeDetails(recipeModel: recipeModel),
              RecipeIngredients(recipeModel: recipeModel),
              RecipePreparationSteps(recipeModel: recipeModel),
              RecipeComments(recipeModel: recipeModel),
            ],
          ),
        ],
      ),
    );
  }
}
