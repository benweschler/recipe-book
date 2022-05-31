import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_book/recipe.dart';
import 'package:recipe_book/recipe_page.dart';
import 'package:recipe_book/theme.dart';

import 'global_constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _precacheRecipeImages(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            );
          }
          return const RecipePage();
        },
      ),
    );
  }

  Future _precacheRecipeImages(BuildContext context) async {
    for (Recipe recipe in Constants.recipeList) {
      await precacheImage(NetworkImage(recipe.imageURL), context);
    }
  }
}
