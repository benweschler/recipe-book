import 'package:recipe_book/utils.dart' show Rating;

class Recipe {
  final String imageURL;
  final String name;
  final String description;
  final Rating rating;
  final int numReviews;
  final String prepTime;
  final String cookTime;
  final String numPortions;

  const Recipe({
    required this.imageURL,
    required this.name,
    required this.description,
    required this.rating,
    required this.numReviews,
    required this.prepTime,
    required this.cookTime,
    required this.numPortions,
  });
}
