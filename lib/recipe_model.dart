class Recipe {
  final String id;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
  });
}

 List<Recipe> recipes = [
  Recipe(
    id: 'r1',
    name: 'Pasta',
    imageUrl: 'https://images.aws.nestle.recipes/resized/0a0717810b73a1672a029c29788e557b_creamy_alfredo_pasta_long_left_1080_850.jpg',
    ingredients: ['Pasta', 'Tomato Sauce', 'Cheese'],
    steps: ['Boil pasta', 'Prepare sauce', 'Mix and serve'],
  ),
  // Add more recipes as needed
];
