import 'package:di_example/core/models/recipe_model.dart';
import 'package:di_example/features/navigation_bar/app_bottom_navigation_bar.dart';
import 'package:di_example/features/recipes/recipe_widget.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          RecipeWidget(
            recipe: RecipeModel(
              title: 'Recipe 1',
              imageUrl: 'https://via.placeholder.com/150',
              id: '1',
            ),
          ),
          RecipeWidget(
            recipe: RecipeModel(
              title: 'Recipe 2',
              imageUrl: 'https://via.placeholder.com/150',
              id: '2',
            ),
          ),
          RecipeWidget(
            recipe: RecipeModel(
              title: 'Recipe 3',
              imageUrl: 'https://via.placeholder.com/150',
              id: '3',
            ),
          ),
        ],
      ),
    );
  }
}
