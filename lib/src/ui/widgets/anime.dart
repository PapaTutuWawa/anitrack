import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/ui/widgets/swipe_icon.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

/// A widget for displaying simple data about an anime in the listview
class AnimeListWidget extends StatelessWidget {
  const AnimeListWidget({
    required this.data,
    required this.onLeftSwipe,
    required this.onRightSwipe,
    super.key,
  });
  
  /// The anime to display
  final AnimeTrackingData data;

  /// Callbacks for the swipe functionality
  final void Function() onLeftSwipe;
  final void Function() onRightSwipe;

  @override
  Widget build(BuildContext context) {
    return SwipeableTile.swipeToTrigger(
      onSwiped: (direction) {
        if (direction == SwipeDirection.endToStart) {
          onRightSwipe();
        } else if (direction == SwipeDirection.startToEnd) {
          onLeftSwipe();
        }
      },
      // TODO(PapaTutuWawa): Fix
      key: UniqueKey(),
      backgroundBuilder: (_, direction, __) {
        if (direction == SwipeDirection.endToStart) {
          return Align(
            alignment: Alignment.centerRight,
            child: SwipeIcon(
              Icons.add,
            ),
          );
        } else if (direction == SwipeDirection.startToEnd) {
          return Align(
            alignment: Alignment.centerLeft,
            child: SwipeIcon(
              Icons.remove,
            ),
          );
        }

        return Container();
      },
      color: Theme.of(context).scaffoldBackgroundColor,
      direction: SwipeDirection.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 100,
                child: Image.network(
                  data.thumbnailUrl,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.title,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      '${data.episodesWatched}/${data.episodesTotal ?? "???"}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
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
