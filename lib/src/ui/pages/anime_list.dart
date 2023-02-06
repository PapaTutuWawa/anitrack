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
  AnimeListPage({
    super.key,
  });

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

  List<PopupMenuItem<MediumTrackingState>> _getPopupButtonItems(TrackingMediumType type) {
    return [
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.ongoing,
        child: Text(MediumTrackingState.ongoing.toNameString(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.completed,
        child: Text(MediumTrackingState.completed.toNameString(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.planned,
        child: Text(MediumTrackingState.planned.toNameString(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.dropped,
        child: Text(MediumTrackingState.dropped.toNameString(type)),
      ),
      const PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.all,
        child: Text('All'),
      ),
    ];
  }
  
  Widget _getPopupButton(BuildContext context, AnimeListState state) {
    switch (state.trackingType) {
      case TrackingMediumType.anime:
        return PopupMenuButton(
          icon: const Icon(
            Icons.filter_list,
          ),
          initialValue: state.animeFilterState,
          onSelected: (filterState) {
            context.read<AnimeListBloc>().add(
              AnimeFilterChangedEvent(filterState),
            );
          },
          itemBuilder: (_) => _getPopupButtonItems(TrackingMediumType.anime),
        );
      case TrackingMediumType.manga:
        return PopupMenuButton(
          icon: const Icon(
            Icons.filter_list,
          ),
          initialValue: state.mangaFilterState,
          onSelected: (filterState) {
            context.read<AnimeListBloc>().add(
              MangaFilterChangedEvent(filterState),
            );
          },
          itemBuilder: (_) => _getPopupButtonItems(TrackingMediumType.manga),
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
              _getPageTitle(state.trackingType),
            ),
            actions: [
              _getPopupButton(context, state),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xffcf4aff),
                  ),
                  child: Text(
                    'AniTrack',
                    style: TextStyle(
                      color: Color(0xff232323),
                      fontSize: 24,
                    ),
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.of(context).pushNamed(aboutRoute);
                  },
                ),
              ],
            ),
          ),
          body: PageView(
            // Prevent swiping between pages
            // (https://github.com/flutter/flutter/issues/37510#issuecomment-612663656)
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              ListView.builder(
                itemCount: state.animes.length,
                itemBuilder: (context, index) {
                  final anime = state.animes[index];
                  if (state.animeFilterState != MediumTrackingState.all) {
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
                  if (state.mangaFilterState != MediumTrackingState.all) {
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
            items: const [
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
