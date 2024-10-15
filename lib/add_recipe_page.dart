import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  static const routeName = '/add-recipe';

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _imageUrl = '';
  final List<String> _ingredients = [];
  final List<String> _steps = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Recipe Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a recipe name.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an image URL.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _imageUrl = value!;
                },
              ),
              // Add fields for ingredients and steps
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Save the recipe
                    Navigator.pop(context);
                  }
                },
                child: Text('Save Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
