import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/dropdown.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => DetailsPage(),
    settings: const RouteSettings(
      name: detailsRoute,
    ),
  );

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  final TextEditingController _volumesOwnedController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final state = GetIt.I.get<DetailsBloc>().state;
    
    if (state.trackingType == TrackingMediumType.manga) {
      _volumesOwnedController.text = '${(state.data as MangaTrackingData).volumesOwned}';
    }
  }
  
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

                if (state.trackingType == TrackingMediumType.manga)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final data = (state.data as MangaTrackingData);
                            if (data.volumesOwned == 0) return;

                            _volumesOwnedController.text = '${data.volumesOwned - 1}';
                            context.read<DetailsBloc>().add(
                              DetailsUpdatedEvent(
                                data.copyWith(
                                  volumesOwned: data.volumesOwned - 1,
                                ),
                              ),
                            );
                          },
                          child: Icon(Icons.remove),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Volumes owned',
                              ),
                              keyboardType: TextInputType.numberWithOptions(
                                signed: false,
                                decimal: false,
                              ),
                              textInputAction: TextInputAction.done,
                              controller: _volumesOwnedController,
                              onSubmitted: (value) {
                                final amount = int.parse(value);
                                if (amount < 0) return;

                                context.read<DetailsBloc>().add(
                                  DetailsUpdatedEvent(
                                    (state.data as MangaTrackingData).copyWith(
                                      volumesOwned: amount,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            final data = (state.data as MangaTrackingData);

                            _volumesOwnedController.text = '${data.volumesOwned + 1}';
                            context.read<DetailsBloc>().add(
                              DetailsUpdatedEvent(
                                data.copyWith(
                                  volumesOwned: data.volumesOwned + 1,
                                ),
                              ),
                            );
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
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
