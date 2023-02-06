import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeSearchPage extends StatelessWidget {
  const AnimeSearchPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => const AnimeSearchPage(),
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
            title: Text(
              state.trackingType == TrackingMediumType.anime ?
                'Anime Search' :
                'Manga Search',
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  decoration: const InputDecoration(
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
                const Expanded(
                  child: Align(
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
                            ResultTappedEvent(item),
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
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
