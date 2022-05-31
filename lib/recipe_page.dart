import 'package:flutter/material.dart';
import 'package:recipe_book/recipe.dart';
import 'package:recipe_book/theme.dart';
import 'package:recipe_book/utils.dart';

import 'global_constants.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  int recipeNdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationLayout(
        children: [
          Expanded(
            child: ImageGradient(
              image: Image.network(
                Constants.recipeList[recipeNdx].imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.med,
                vertical: Insets.lg,
              ),
              child: RecipeDetails(recipe: Constants.recipeList[recipeNdx]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.navigate_next_rounded),
        onPressed: () => setState(
          () => recipeNdx >= Constants.recipeList.length - 1
              ? recipeNdx = 0
              : recipeNdx++,
        ),
      ),
    );
  }
}

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleText = Text(recipe.name, style: TextStyles.h1);

    final reviewRow = Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                i < recipe.rating.stars
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border)
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text("${recipe.numReviews} Reviews", style: TextStyles.body),
          ),
        ),
      ],
    );

    final iconRow = DefaultTextStyle.merge(
      style: const TextStyle(height: 1.75),
      child: Row(
        children: [
          [
            Icon(Icons.kitchen, color: Theme.of(context).colorScheme.primary),
            const Text("PREP", style: TextStyles.body),
            Text(recipe.prepTime),
          ],
          [
            Icon(
              Icons.access_time_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            const Text("COOK", style: TextStyles.body),
            Text(recipe.cookTime),
          ],
          [
            Icon(Icons.dining, color: Theme.of(context).colorScheme.primary),
            const Text("FEEDS", style: TextStyles.body),
            Text(recipe.numPortions),
          ],
        ].map((col) => Expanded(child: Column(children: col))).toList(),
      ),
    );

    final description = Text(
      recipe.description,
      textAlign: TextAlign.center,
      style: TextStyles.body,
    );

    return Column(
      children: [
        titleText,
        const SizedBox(height: Insets.med),
        reviewRow,
        const SizedBox(height: Insets.lg),
        iconRow,
        const SizedBox(height: Insets.sm),
        description,
      ],
    );
  }
}
