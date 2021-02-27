import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> _favoritedMeals;

  FavouriteScreen(this._favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favoritedMeals[index].id,
            title: _favoritedMeals[index].title,
            imageUrl: _favoritedMeals[index].imageUrl,
            duration: _favoritedMeals[index].duration,
            affordability: _favoritedMeals[index].affordability,
            complexity: _favoritedMeals[index].complexity,
          );
        },
        itemCount: _favoritedMeals.length,
      );
    }
  }
}
