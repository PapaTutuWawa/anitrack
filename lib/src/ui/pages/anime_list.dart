import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/anime.dart';

class AnimeListPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => AnimeListPage(),
    settings: const RouteSettings(
      name: animeListRoute,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeListBloc, AnimeListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Animes'),
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
          body: ListView.builder(
            itemCount: state.animes.length,
            itemBuilder: (context, index) {
              final anime = state.animes[index];
              if (state.filterState != AnimeTrackingState.all) {
                if (anime.state != state.filterState) return Container();
              }

              return AnimeListWidget(
                data: anime,
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<AnimeSearchBloc>().add(
                AnimeSearchRequestedEvent(),
              );
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
