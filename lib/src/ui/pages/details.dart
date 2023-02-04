import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:anitrack/src/ui/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget _makeListTile(BuildContext context, dynamic value, String text, bool selected) {
  return ListTile(
    title: Text(text),
    trailing: selected ?
      Icon(Icons.check) :
      null,
    onTap: () {
      Navigator.of(context).pop(value);
    },
  );
}

class DetailsPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => DetailsPage(),
    settings: const RouteSettings(
      name: detailsRoute,
    ),
  );

  String _getTrackingStateText(DetailsState state) {
    if (state.trackingType == TrackingMediumType.anime) {
      return (state.data as AnimeTrackingData).state.toNameString();
    } else {
      return (state.data as MangaTrackingData).state.toNameString();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          return state.data == null ?
          Container() :
          Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimeCoverImage(
                      url: state.trackingType == TrackingMediumType.anime ?
                      (state.data as AnimeTrackingData).thumbnailUrl :
                      (state.data as MangaTrackingData).thumbnailUrl,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.trackingType == TrackingMediumType.anime ?
                              (state.data as AnimeTrackingData).title :
                              (state.data as MangaTrackingData).title,
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),

                          TextButton(
                            child: Text(
                              _getTrackingStateText(state),
                            ),
                            onPressed: () async {
                              final result = await showModalBottomSheet<dynamic>(
                                context: context,
                                builder: (context) {
                                  return ListView(
                                    shrinkWrap: true,
                                    children: [
                                      _makeListTile(
                                        context,
                                        state.trackingType == TrackingMediumType.anime ?
                                          AnimeTrackingState.watching :
                                          MangaTrackingState.reading,
                                        state.trackingType == TrackingMediumType.anime ?
                                          'Watching' :
                                          'Reading',
                                        state.trackingType == TrackingMediumType.anime ?
                                          (state.data as AnimeTrackingData).state == AnimeTrackingState.watching :
                                          (state.data as MangaTrackingData).state == MangaTrackingState.reading,
                                      ),
                                      _makeListTile(
                                        context,
                                        state.trackingType == TrackingMediumType.anime ?
                                          AnimeTrackingState.completed :
                                          MangaTrackingState.completed,
                                        'Completed',
                                        state.trackingType == TrackingMediumType.anime ?
                                          (state.data as AnimeTrackingData).state == AnimeTrackingState.completed :
                                          (state.data as MangaTrackingData).state == MangaTrackingState.completed,
                                      ),
                                      _makeListTile(
                                        context,
                                        state.trackingType == TrackingMediumType.anime ?
                                          AnimeTrackingState.planToWatch :
                                          MangaTrackingState.planToRead,
                                        state.trackingType == TrackingMediumType.anime ?
                                          'Plan to watch' :
                                          'Plan to read',
                                        state.trackingType == TrackingMediumType.anime ?
                                          (state.data as AnimeTrackingData).state == AnimeTrackingState.planToWatch :
                                          (state.data as MangaTrackingData).state == MangaTrackingState.planToRead,
                                      ),
                                      _makeListTile(
                                        context,
                                        state.trackingType == TrackingMediumType.anime ?
                                          AnimeTrackingState.dropped :
                                          MangaTrackingState.dropped,
                                        'Dropped',
                                        state.trackingType == TrackingMediumType.anime ?
                                          (state.data as AnimeTrackingData).state == AnimeTrackingState.dropped :
                                          (state.data as MangaTrackingData).state == MangaTrackingState.dropped,
                                      ),
                                    ],
                                  );
                                },
                              );

                              if (result == null) return;

                              if (state.trackingType == TrackingMediumType.anime) {
                                context.read<DetailsBloc>().add(
                                  DetailsUpdatedEvent(
                                    (state.data as AnimeTrackingData).copyWith(
                                      state: result as AnimeTrackingState,
                                    ),
                                  ),
                                );
                              } else {
                                context.read<DetailsBloc>().add(
                                  DetailsUpdatedEvent(
                                    (state.data as MangaTrackingData).copyWith(
                                      state: result as MangaTrackingState,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
