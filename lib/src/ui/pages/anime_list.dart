import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
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

  Widget _getPopupButton(BuildContext context, AnimeListState state) {
    switch (state.trackingType) {
      case TrackingMediumType.anime:
        return PopupMenuButton(
          icon: Icon(
            Icons.filter_list,
          ),
          initialValue: state.animeFilterState,
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
        );
      case TrackingMediumType.manga:
        return PopupMenuButton(
          icon: Icon(
            Icons.filter_list,
          ),
          initialValue: state.mangaFilterState,
          onSelected: (filterState) {
            context.read<AnimeListBloc>().add(
              MangaFilterChangedEvent(filterState),
            );
          },
          itemBuilder: (_) => [
            const PopupMenuItem<MangaTrackingState>(
              value: MangaTrackingState.reading,
              child: Text('Reading'),
            ),
            const PopupMenuItem<MangaTrackingState>(
              value: MangaTrackingState.completed,
              child: Text('Completed'),
            ),
            const PopupMenuItem<MangaTrackingState>(
              value: MangaTrackingState.planToRead,
              child: Text('Plan to read'),
            ),
            const PopupMenuItem<MangaTrackingState>(
              value: MangaTrackingState.dropped,
              child: Text('Dropped'),
            ),
            const PopupMenuItem<MangaTrackingState>(
              value: MangaTrackingState.all,
              child: Text('All'),
            ),
          ],
        );
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
              _getPopupButton(context, state),
            ],
          ),
          body: PageView(
            controller: _controller,
            children: [
              ListView.builder(
                itemCount: state.animes.length,
                itemBuilder: (context, index) {
                  final anime = state.animes[index];
                  if (state.animeFilterState != AnimeTrackingState.all) {
                    if (anime.state != state.animeFilterState) return Container();
                  }

                  return InkWell(
                    onTap: () {
                      context.read<DetailsBloc>().add(
                        AnimeDetailsRequestedEvent(anime),
                      );
                    },
                    child: ListItem(
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
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: state.mangas.length,
                itemBuilder: (context, index) {
                  final manga = state.mangas[index];
                  if (state.mangaFilterState != MangaTrackingState.all) {
                    if (manga.state != state.mangaFilterState) return Container();
                  }

                  return InkWell(
                    onTap: () {
                      context.read<DetailsBloc>().add(
                        MangaDetailsRequestedEvent(manga),
                      );
                    },
                    child: ListItem(
                      title: manga.title,
                      thumbnailUrl: manga.thumbnailUrl,
                      extra: [
                        Text(
                          '${manga.chaptersRead}/${manga.chaptersTotal ?? "???"}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                      onLeftSwipe: () {
                        context.read<AnimeListBloc>().add(
                          MangaChapterDecrementedEvent(state.mangas[index].id),
                        );
                      },
                      onRightSwipe: () {
                        context.read<AnimeListBloc>().add(
                          MangaChapterIncrementedEvent(state.mangas[index].id),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<AnimeSearchBloc>().add(
                AnimeSearchRequestedEvent(state.trackingType),
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
              context.read<AnimeListBloc>().add(
                AnimeTrackingTypeChanged(
                  index == 0 ?
                    TrackingMediumType.anime :
                    TrackingMediumType.manga,
                ),
              );

              _controller.jumpToPage(index);
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
