import 'package:flutter/material.dart';
import 'recipe_model.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(recipe.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ...recipe.ingredients.map((ingredient) => Text(ingredient)),
            SizedBox(height: 20),
            Text(
              'Steps',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ...recipe.steps.map((step) => Text(step)),
          ],
        ),
      ),
    );
  }
}
