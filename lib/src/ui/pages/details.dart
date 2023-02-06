import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/dropdown.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:anitrack/src/ui/widgets/integer_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => const DetailsPage(),
    settings: const RouteSettings(
      name: detailsRoute,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
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
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: DropdownSelector<MediumTrackingState>(
                    title: state.trackingType == TrackingMediumType.anime ?
                      'Watch state' :
                      'Read state',
                    onChanged: (MediumTrackingState newState) {
                      if (state.trackingType == TrackingMediumType.anime) {
                        context.read<DetailsBloc>().add(
                          DetailsUpdatedEvent(
                            (state.data as AnimeTrackingData).copyWith(
                              state: newState,
                            ),
                          ),
                        );
                      } else if (state.trackingType == TrackingMediumType.manga) {
                        context.read<DetailsBloc>().add(
                          DetailsUpdatedEvent(
                            (state.data as MangaTrackingData).copyWith(
                              state: newState,
                            ),
                          ),
                        );
                      }
                    },
                    values: [
                      SelectorItem(
                        MediumTrackingState.ongoing,
                        MediumTrackingState.ongoing.toNameString(state.trackingType),
                      ),
                      SelectorItem(
                        MediumTrackingState.completed,
                        MediumTrackingState.completed.toNameString(state.trackingType),
                      ),
                      SelectorItem(
                        MediumTrackingState.planned,
                        MediumTrackingState.planned.toNameString(state.trackingType),
                      ),
                      SelectorItem(
                        MediumTrackingState.dropped,
                        MediumTrackingState.dropped.toNameString(state.trackingType),
                      ),
                    ],
                    initialValue: state.trackingType == TrackingMediumType.anime ?
                    (state.data as AnimeTrackingData).state :
                    (state.data as MangaTrackingData).state,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: IntegerInput(
                    labelText: state.trackingType == TrackingMediumType.anime ?
                      'Episodes' :
                      'Chapters',
                    onChanged: (value) {
                      switch (state.trackingType) {
                        case TrackingMediumType.anime:
                          final data = state.data as AnimeTrackingData;
                          context.read<DetailsBloc>().add(
                            DetailsUpdatedEvent(
                              data.copyWith(
                                episodesWatched: value,
                              ),
                            ),
                          );
                          break;
                        case TrackingMediumType.manga:
                          final data = state.data as MangaTrackingData;
                          context.read<DetailsBloc>().add(
                            DetailsUpdatedEvent(
                              data.copyWith(
                                chaptersRead: value,
                              ),
                            ),
                          );
                          break;
                      }
                    },
                    initialValue: state.trackingType == TrackingMediumType.anime ?
                      (state.data as AnimeTrackingData).episodesWatched :
                      (state.data as MangaTrackingData).chaptersRead,
                  ),
                ),
                
                if (state.trackingType == TrackingMediumType.manga)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: IntegerInput(
                      labelText: 'Volumes owned',
                      onChanged: (value) {
                        final data = state.data as MangaTrackingData;
                        context.read<DetailsBloc>().add(
                          DetailsUpdatedEvent(
                            data.copyWith(
                              volumesOwned: value,
                            ),
                          ),
                        );
                      },
                      initialValue: (GetIt.I.get<DetailsBloc>().state.data as MangaTrackingData).volumesOwned,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}