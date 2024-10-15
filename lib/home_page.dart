import 'package:flutter/material.dart';
import 'package:recipe/search_delegate.dart';
import 'recipe_detail_page.dart';
import 'add_recipe_page.dart';
import 'recipe_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: RecipeSearch());
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: recipes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => RecipeCard(recipes[i]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, AddRecipePage.routeName);
        },
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailPage(recipe),
          ),
        );
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            const SizedBox(height: 8,),
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(recipe.imageUrl,height: 60, fit: BoxFit.cover)),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(recipe.name, style: const TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
