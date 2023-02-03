import 'package:flutter/material.dart';

class AnimeCoverImage extends StatelessWidget {
  const AnimeCoverImage({
    required this.url,
    super.key,
  });

  /// The URL to the cover image.
  final String url;

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 100 * (16 / 9),
        width: 100,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
