import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeCoverImage extends StatelessWidget {
  const AnimeCoverImage({
    required this.url,
    required this.hero,
    this.cached = true,
    this.extra,
    this.onTap,
    super.key,
  });

  /// The URL to the cover image.
  final String url;

  /// Flag indicating if the image should be cached.
  final bool cached;

  /// The hero tag of the image.
  final String hero;

  /// An extra widget with a translucent backdrop.
  final Widget? extra;

  /// Callback for when the image is tapped.
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: hero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          child: SizedBox(
            height: 100 * (16 / 9),
            width: 120,
            child: InkWell(
              onTap: onTap ?? () {},
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: cached
                              ? CachedNetworkImageProvider(url) as ImageProvider
                              : NetworkImage(url),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  if (extra != null)
                    Positioned(
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        height: 40,
                        child: ColoredBox(
                          color: Colors.black54,
                          child: extra,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
