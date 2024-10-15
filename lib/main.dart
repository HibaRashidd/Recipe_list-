import 'package:flutter/material.dart';
import 'home_page.dart';
import 'add_recipe_page.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        AddRecipePage.routeName: (ctx) => AddRecipePage(),
      },
    );
  }
}
