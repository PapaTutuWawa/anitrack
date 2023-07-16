import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/helpers.dart';
import 'package:anitrack/src/ui/widgets/grid_item.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
        builder: (_) => const AnimeListPage(),
        settings: const RouteSettings(
          name: animeListRoute,
        ),
      );

  @override
  AnimeListPageState createState() => AnimeListPageState();
}

class AnimeListPageState extends State<AnimeListPage> {
  final PageController _controller = PageController();
  final ScrollController _animeScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _animeScrollController.addListener(_onAnimeListScrolled);
  }

  void _onAnimeListScrolled() {
    //print(_animeScrollController.position.maxScrollExtent);
    final bloc = GetIt.I.get<AnimeListBloc>();
    if (_animeScrollController.offset + 20 >=
        _animeScrollController.position.maxScrollExtent) {
      if (bloc.state.buttonVisibility) {
        bloc.add(
          AddButtonVisibilitySetEvent(false),
        );
      }
    } else {
      if (!bloc.state.buttonVisibility) {
        bloc.add(
          AddButtonVisibilitySetEvent(true),
        );
      }
    }
  }

  String _getPageTitle(TrackingMediumType type) {
    switch (type) {
      case TrackingMediumType.anime:
        return t.content.anime;
      case TrackingMediumType.manga:
        return t.content.manga;
    }
  }

  List<PopupMenuItem<MediumTrackingState>> _getPopupButtonItems(
    TrackingMediumType type,
  ) {
    return [
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.ongoing,
        child: Text(MediumTrackingState.ongoing.getName(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.completed,
        child: Text(MediumTrackingState.completed.getName(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.planned,
        child: Text(MediumTrackingState.planned.getName(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.dropped,
        child: Text(MediumTrackingState.dropped.getName(type)),
      ),
      PopupMenuItem<MediumTrackingState>(
        value: MediumTrackingState.paused,
        child: Text(MediumTrackingState.paused.getName(type)),
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
          drawer: getDrawer(context),
          body: PageView(
            // Prevent swiping between pages
            // (https://github.com/flutter/flutter/issues/37510#issuecomment-612663656)
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 120 / (100 * (16 / 9)),
                  ),
                  itemCount: state.animes.length,
                  controller: _animeScrollController,
                  itemBuilder: (context, index) {
                    final anime = state.animes[index];
                    return GridItem(
                      minusCallback: () {
                        context.read<AnimeListBloc>().add(
                              AnimeEpisodeDecrementedEvent(
                                anime.id,
                              ),
                            );
                      },
                      plusCallback: () {
                        context.read<AnimeListBloc>().add(
                              AnimeEpisodeIncrementedEvent(
                                anime.id,
                              ),
                            );
                      },
                      child: AnimeCoverImage(
                        url: anime.thumbnailUrl,
                        hero: anime.id,
                        onTap: () {
                          context.read<DetailsBloc>().add(
                                AnimeDetailsRequestedEvent(anime),
                              );
                        },
                        extra: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              '${anime.episodesWatched}/${anime.episodesTotal ?? "???"}',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 120 / (100 * (16 / 9)),
                  ),
                  itemCount: state.mangas.length,
                  itemBuilder: (context, index) {
                    final manga = state.mangas[index];
                    return GridItem(
                      minusCallback: () {
                        context.read<AnimeListBloc>().add(
                              MangaChapterDecrementedEvent(
                                manga.id,
                              ),
                            );
                      },
                      plusCallback: () {
                        context.read<AnimeListBloc>().add(
                              MangaChapterIncrementedEvent(
                                manga.id,
                              ),
                            );
                      },
                      child: AnimeCoverImage(
                        hero: manga.id,
                        url: manga.thumbnailUrl,
                        onTap: () {
                          context.read<DetailsBloc>().add(
                                MangaDetailsRequestedEvent(manga),
                              );
                        },
                        extra: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              '${manga.chaptersRead}/${manga.chaptersTotal ?? "???"}',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: BlocBuilder<AnimeListBloc, AnimeListState>(
            buildWhen: (prev, next) =>
                prev.buttonVisibility != next.buttonVisibility,
            builder: (context, state) {
              return AnimatedScale(
                duration: const Duration(milliseconds: 250),
                scale: state.buttonVisibility ? 1 : 0,
                curve: Curves.easeInOutQuint,
                child: FloatingActionButton(
                  onPressed: () {
                    context.read<AnimeSearchBloc>().add(
                          AnimeSearchRequestedEvent(state.trackingType),
                        );
                  },
                  tooltip: t.tooltips.addNewItem,
                  child: const Icon(Icons.add),
                ),
              );
            },
          ),
          bottomNavigationBar: BottomBar(
            selectedIndex:
                state.trackingType == TrackingMediumType.anime ? 0 : 1,
            onTap: (int index) {
              context.read<AnimeListBloc>().add(
                    AnimeTrackingTypeChanged(
                      index == 0
                          ? TrackingMediumType.anime
                          : TrackingMediumType.manga,
                    ),
                  );

              _controller.jumpToPage(index);
            },
            items: [
              BottomBarItem(
                icon: const Icon(Icons.tv),
                title: Text(t.content.anime),
                activeColor: Colors.blue,
              ),
              BottomBarItem(
                icon: const Icon(Icons.auto_stories),
                title: Text(t.content.manga),
                activeColor: Colors.red,
              ),
            ],
          ),
        );
      },
    );
  }
}
