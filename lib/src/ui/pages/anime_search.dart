import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/list_item.dart';
import 'package:anitrack/src/ui/widgets/image.dart';

class AnimeSearchPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => AnimeSearchPage(),
    settings: const RouteSettings(
      name: animeSearchRoute,
    ),
  );
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeSearchBloc, AnimeSearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Anime Search'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search query',
                  ),
                  onSubmitted: (_) {
                    context.read<AnimeSearchBloc>().add(
                      SearchQuerySubmittedEvent(),
                    );
                  },
                  onChanged: (value) {
                    context.read<AnimeSearchBloc>().add(
                      SearchQueryChangedEvent(value),
                    );
                  },
                ),
              ),

              if (state.working)
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: state.searchResults.length,
                    itemBuilder: (context, index) {
                      final item = state.searchResults[index];
                      return InkWell(
                        onTap: () {
                          context.read<AnimeSearchBloc>().add(
                            AnimeAddedEvent(item),
                          );
                        },
                        child: ListItem(
                          title: item.title,
                          thumbnailUrl: item.thumbnailUrl,
                          extra: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.description,
                                textAlign: TextAlign.justify,
                                style: Theme.of(context).textTheme.bodyMedium,
                                maxLines: 4,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
