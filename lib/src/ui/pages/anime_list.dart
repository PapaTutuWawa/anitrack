import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/list_item.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeListPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => AnimeListPage(),
    settings: const RouteSettings(
      name: animeListRoute,
    ),
  );

  final PageController _controller = PageController();

  String _getPageTitle(TrackingMediumType type) {
    switch (type) {
      case TrackingMediumType.anime: return 'Anime';
      case TrackingMediumType.manga: return 'Manga';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeListBloc, AnimeListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              _getPageTitle(state.trackingType)
            ),
            actions: [
              PopupMenuButton(
                icon: Icon(
                  Icons.filter_list,
                ),
                initialValue: state.filterState,
                onSelected: (filterState) {
                  context.read<AnimeListBloc>().add(
                    AnimeFilterChangedEvent(filterState),
                  );
                },
                itemBuilder: (_) => [
                  const PopupMenuItem<AnimeTrackingState>(
                    value: AnimeTrackingState.watching,
                    child: Text('Watching'),
                  ),
                  const PopupMenuItem<AnimeTrackingState>(
                    value: AnimeTrackingState.completed,
                    child: Text('Completed'),
                  ),
                  const PopupMenuItem<AnimeTrackingState>(
                    value: AnimeTrackingState.planToWatch,
                    child: Text('Plan to watch'),
                  ),
                  const PopupMenuItem<AnimeTrackingState>(
                    value: AnimeTrackingState.dropped,
                    child: Text('Dropped'),
                  ),
                  const PopupMenuItem<AnimeTrackingState>(
                    value: AnimeTrackingState.all,
                    child: Text('All'),
                  ),
                ],
              ),
            ],
          ),
          body: PageView(
            controller: _controller,
            children: [
              ListView.builder(
                itemCount: state.animes.length,
                itemBuilder: (context, index) {
                  final anime = state.animes[index];
                  if (state.filterState != AnimeTrackingState.all) {
                    if (anime.state != state.filterState) return Container();
                  }

                  return ListItem(
                    title: anime.title,
                    thumbnailUrl: anime.thumbnailUrl,
                    extra: [
                      Text(
                        '${anime.episodesWatched}/${anime.episodesTotal ?? "???"}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                    onLeftSwipe: () {
                      context.read<AnimeListBloc>().add(
                        AnimeEpisodeDecrementedEvent(state.animes[index].id),
                      );
                    },
                    onRightSwipe: () {
                      context.read<AnimeListBloc>().add(
                        AnimeEpisodeIncrementedEvent(state.animes[index].id),
                      );
                    },
                  );
                },
              ),
              Placeholder(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<AnimeSearchBloc>().add(
                AnimeSearchRequestedEvent(),
              );
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BottomBar(
            selectedIndex: state.trackingType == TrackingMediumType.anime ?
              0 :
              1,
            onTap: (int index) {
              _controller.jumpToPage(index);
              context.read<AnimeListBloc>().add(
                AnimeTrackingTypeChanged(
                  index == 0 ?
                    TrackingMediumType.anime :
                    TrackingMediumType.manga,
                ),
              );
            },
            items: <BottomBarItem>[
              BottomBarItem(
                icon: Icon(Icons.tv),
                title: Text('Anime'),
                activeColor: Colors.blue,
              ),
              BottomBarItem(
                icon: Icon(Icons.auto_stories),
                title: Text('Manga'),
                activeColor: Colors.red,
              ),
            ],
          ),
        );
      },
    );
  }
}
