import 'package:recipe_book/recipe.dart';
import 'package:recipe_book/utils.dart';

class Constants {
  static const List<Recipe> recipeList = [
    _strawberryPavlova,
    _beefWellington,
    _nerdClout,
  ];

  static const Recipe _strawberryPavlova = Recipe(
    imageURL:
        'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Strawberry-Pavlova-CMS.jpg',
    name: 'Strawberry Pavlova',
    description:
        'Pavlova is a meringue-based dessert named after the Russian ballerina '
        'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
        'topped with fruit and whipped cream.',
    rating: Rating.four(),
    numReviews: 170,
    prepTime: "25 min",
    cookTime: "1 hr",
    numPortions: "4 - 6",
  );

  static const Recipe _nerdClout = Recipe(
    imageURL: 'https://coldturkeymusic.files.wordpress.com/2017/12/yuppies.png',
    name: 'Nerd Clout',
    description: 'Become a yuppie today!',
    rating: Rating.one(),
    numReviews: 389234,
    prepTime: "none",
    cookTime: "1 lifetime",
    numPortions: "everyone",
  );

  static const Recipe _beefWellington = Recipe(
    imageURL:
        'https://static01.nyt.com/images/2019/12/13/dining/mc-beef-wellington/mc-beef-wellington-articleLarge-v2.jpg',
    name: 'Beef Wellington',
    description:
        'Beef Wellington is a steak dish of English origin, made out of '
        'fillet steak coated with pâté and duxelles, wrapped in puff pastry, then '
        'baked. Some recipes include wrapping the coated meat in a crêpe or parma '
        'ham to retain the moisture and prevent it from making the pastry soggy.',
    rating: Rating.five(),
    numReviews: 2334,
    prepTime: "35 min",
    cookTime: "1.5 hours",
    numPortions: "5 - 7",
  );
}
