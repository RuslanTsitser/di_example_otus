import 'package:di_example/core/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key, required this.recipe});
  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/recipe-details');
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: <Widget>[
            Image.network(
              recipe.imageUrl,
              fit: BoxFit.cover,
              width: 150,
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(recipe.title),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
