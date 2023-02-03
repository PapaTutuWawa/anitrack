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
          ),
          body: ListView.builder(
            itemCount: state.animes.length,
            itemBuilder: (context, index) {
              return AnimeListWidget(
                data: state.animes[index],
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
