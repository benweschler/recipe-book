import 'package:flutter/material.dart';

/// Lays [children] out in a [Row] if in landscape mode, or in a [Column] if in
/// portrait mode.
class OrientationLayout extends StatelessWidget {
  final List<Widget> children;

  const OrientationLayout({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? Column(children: children)
        : Row(children: children);
  }
}

/// The number of stars a [Recipe] is given.
class Rating {
  final int stars;

  const Rating.one() : stars = 1;
  const Rating.two() : stars = 2;
  const Rating.three() : stars = 3;
  const Rating.four() : stars = 4;
  const Rating.five() : stars = 5;
}

/// Overlays an Image with a black gradient to improve visibility.
class ImageGradient extends StatelessWidget {
  // Pass an Image instead of an image URL to increase reusability.
  final Image image;

  const ImageGradient({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          SizedBox(
            height: constraints.maxHeight,
            child: image,
          ),
          Container(
            width: constraints.maxWidth,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.75),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
