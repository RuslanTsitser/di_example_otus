import 'package:di_example/features/auth/auth_screen.dart';
import 'package:di_example/features/create_recipe/create_recipe_screen.dart';
import 'package:di_example/features/favorites/favorites_screen.dart';
import 'package:di_example/features/recipe_details/recipe_details_screen.dart';
import 'package:di_example/features/recipes/recipes_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static String get initialRoute => '/';

  static Map<String, WidgetBuilder> get routes => {
        '/': (BuildContext context) => const RecipesScreen(),
        '/auth': (BuildContext context) => const AuthScreen(),
        '/recipe-details': (BuildContext context) => const RecipeDetailsScreen(),
        '/create-recipe': (BuildContext context) => const CreateRecipeScreen(),
        '/favorites': (BuildContext context) => const FavoritesScreen(),
      };
}
