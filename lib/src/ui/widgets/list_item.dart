import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:anitrack/src/ui/widgets/swipe_icon.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

/// A widget for displaying simple data about an anime in the listview
class ListItem extends StatelessWidget {
  const ListItem({
    required this.thumbnailUrl,
    required this.title,
    this.onLeftSwipe,
    this.onRightSwipe,
    this.cached = true,
    this.extra = const [],
    this.imageExtra,
    super.key,
  });
  
  /// URL for the cover image.
  final String thumbnailUrl;

  /// The title of the item
  final String title;

  /// Extra widgets.
  final List<Widget> extra;

  final Widget? imageExtra;
  
  /// Callbacks for the swipe functionality.
  final void Function()? onLeftSwipe;
  final void Function()? onRightSwipe;

  /// Flag indicating whether the thumbnail image should be cached
  final bool cached;
  
  @override
  Widget build(BuildContext context) {
    return SwipeableTile.swipeToTrigger(
      onSwiped: (direction) {
        if (direction == SwipeDirection.endToStart) {
          onRightSwipe!();
        } else if (direction == SwipeDirection.startToEnd) {
          onLeftSwipe!();
        }
      },
      // TODO(PapaTutuWawa): Fix
      key: UniqueKey(),
      backgroundBuilder: (_, direction, __) {
        if (direction == SwipeDirection.endToStart) {
          return const Align(
            alignment: Alignment.centerRight,
            child: SwipeIcon(
              Icons.add,
            ),
          );
        } else if (direction == SwipeDirection.startToEnd) {
          return const Align(
            alignment: Alignment.centerLeft,
            child: SwipeIcon(
              Icons.remove,
            ),
          );
        }

        return Container();
      },
      color: Theme.of(context).scaffoldBackgroundColor,
      direction: onRightSwipe != null && onLeftSwipe != null ?
        SwipeDirection.horizontal :
        SwipeDirection.none,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimeCoverImage(
              cached: cached,
              // TODO(Unknown): Have the ID here
              hero: thumbnailUrl,
              extra: imageExtra,
              url: thumbnailUrl,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),

                    ...extra,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
