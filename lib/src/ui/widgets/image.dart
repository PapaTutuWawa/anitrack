import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeCoverImage extends StatelessWidget {
  const AnimeCoverImage({
    required this.url,
    this.cached = true,
    super.key,
  });

  /// The URL to the cover image.
  final String url;

  /// Flag indicating if the image should be cached
  final bool cached;
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 100 * (16 / 9),
        width: 120,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: cached ?
                CachedNetworkImageProvider(url) as ImageProvider :
                NetworkImage(url),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
