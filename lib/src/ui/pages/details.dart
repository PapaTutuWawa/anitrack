import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/widgets/dropdown.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:anitrack/src/ui/widgets/integer_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: Text(t.details.title),
      ),
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          return state.data == null
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimeCoverImage(
                            url: state.data!.thumbnailUrl,
                            hero: '${state.heroImagePrefix}${state.data!.id}',
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.data!.title,
                                    textAlign: TextAlign.left,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 6,
                                    ),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () async {
                                            final result = await showDialog<bool>(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text(
                                                    t.details.removeTitle(
                                                      title: state.data!.title,
                                                    ),
                                                  ),
                                                  content: Text(
                                                    t.details.removeBody(
                                                      title: state.data!.title,
                                                    ),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(
                                                          context,
                                                        ).pop(true);
                                                      },
                                                      style:
                                                          TextButton.styleFrom(
                                                            foregroundColor:
                                                                Colors.red,
                                                          ),
                                                      child: Text(
                                                        t.details.removeButton,
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(
                                                          context,
                                                        ).pop(false);
                                                      },
                                                      child: Text(
                                                        t.details.cancelButton,
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );

                                            if (result != true) return;

                                            // ignore: use_build_context_synchronously
                                            context.read<DetailsBloc>().add(
                                              ItemRemovedEvent(
                                                state.data!.id,
                                                state.trackingType,
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.delete,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            await showModalBottomSheet<void>(
                                              context: context,
                                              builder: (ctx) => DraggableScrollableSheet(
                                                initialChildSize: 1,
                                                builder: (ctx, scrollController) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsGeometry.only(
                                                          top: 18,
                                                        ),
                                                    child: ListView(
                                                      controller:
                                                          scrollController,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsGeometry.directional(
                                                                start: 8,
                                                                end: 8,
                                                              ),
                                                          child: Text(
                                                            t
                                                                .details
                                                                .details
                                                                .titleJa,
                                                            style:
                                                                Theme.of(
                                                                      context,
                                                                    )
                                                                    .textTheme
                                                                    .headlineSmall,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsGeometry.directional(
                                                                start: 8,
                                                                end: 8,
                                                              ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              IconButton(
                                                                onPressed: () async {
                                                                  await Clipboard.setData(
                                                                    ClipboardData(
                                                                      text: state
                                                                          .data!
                                                                          .title,
                                                                    ),
                                                                  );
                                                                  await Fluttertoast.showToast(
                                                                    msg: t
                                                                        .details
                                                                        .details
                                                                        .textCopied,
                                                                  );
                                                                },
                                                                icon:
                                                                    const Icon(
                                                                      Icons
                                                                          .copy,
                                                                    ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsetsGeometry.only(
                                                                        left: 8,
                                                                      ),
                                                                  child: Text(
                                                                    state
                                                                        .data!
                                                                        .title,
                                                                    style: Theme.of(
                                                                      context,
                                                                    ).textTheme.bodyLarge,
                                                                  ),
                                                                ),
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
                                          },
                                          child: const Icon(
                                            Icons.info,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 6,
                                    ),
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () async {
                                            final url = switch (state
                                                .trackingType) {
                                              TrackingMediumType.anime =>
                                                'https://myanimelist.net/anime/${state.data!.id}',
                                              TrackingMediumType.manga =>
                                                'https://myanimelist.net/manga/${state.data!.id}',
                                            };
                                            await launchUrl(
                                              Uri.parse(url),
                                              mode: LaunchMode
                                                  .externalApplication,
                                            );
                                          },
                                          child: Text(t.details.mal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: DropdownSelector<MediumTrackingState>(
                          title: state.trackingType == TrackingMediumType.anime
                              ? t.details.watchState
                              : t.details.readState,
                          onChanged: (newState) {
                            if (state.trackingType ==
                                TrackingMediumType.anime) {
                              context.read<DetailsBloc>().add(
                                DetailsUpdatedEvent(
                                  (state.data! as AnimeTrackingData).copyWith(
                                    state: newState,
                                  ),
                                ),
                              );
                            } else if (state.trackingType ==
                                TrackingMediumType.manga) {
                              context.read<DetailsBloc>().add(
                                DetailsUpdatedEvent(
                                  (state.data! as MangaTrackingData).copyWith(
                                    state: newState,
                                  ),
                                ),
                              );
                            }
                          },
                          values: [
                            SelectorItem(
                              MediumTrackingState.ongoing,
                              MediumTrackingState.ongoing.getName(
                                state.trackingType,
                              ),
                            ),
                            SelectorItem(
                              MediumTrackingState.completed,
                              MediumTrackingState.completed.getName(
                                state.trackingType,
                              ),
                            ),
                            SelectorItem(
                              MediumTrackingState.planned,
                              MediumTrackingState.planned.getName(
                                state.trackingType,
                              ),
                            ),
                            SelectorItem(
                              MediumTrackingState.dropped,
                              MediumTrackingState.dropped.getName(
                                state.trackingType,
                              ),
                            ),
                            SelectorItem(
                              MediumTrackingState.paused,
                              MediumTrackingState.paused.getName(
                                state.trackingType,
                              ),
                            ),
                          ],
                          initialValue: state.data!.state,
                        ),
                      ),
                      /*if (state.trackingType == TrackingMediumType.anime)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Card(
                            clipBehavior: Clip.hardEdge,
                            child: Padding(
                              padding: EdgeInsetsGeometry.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Episodes aired",
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Text(
                                    "12",
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),*/
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: IntegerInput(
                          labelText:
                              state.trackingType == TrackingMediumType.anime
                              ? t.details.episodes
                              : t.details.chapters,
                          onChanged: (value) {
                            switch (state.trackingType) {
                              case TrackingMediumType.anime:
                                final data = state.data! as AnimeTrackingData;
                                context.read<DetailsBloc>().add(
                                  DetailsUpdatedEvent(
                                    data.copyWith(
                                      episodesWatched: value,
                                    ),
                                  ),
                                );
                                break;
                              case TrackingMediumType.manga:
                                final data = state.data! as MangaTrackingData;
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
                          initialValue:
                              state.trackingType == TrackingMediumType.anime
                              ? (state.data! as AnimeTrackingData)
                                    .episodesWatched
                              : (state.data! as MangaTrackingData).chaptersRead,
                        ),
                      ),
                      if (state.trackingType == TrackingMediumType.manga)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: IntegerInput(
                            labelText: t.details.volumesOwned,
                            onChanged: (value) {
                              final data = state.data! as MangaTrackingData;
                              context.read<DetailsBloc>().add(
                                DetailsUpdatedEvent(
                                  data.copyWith(
                                    volumesOwned: value,
                                  ),
                                ),
                              );
                            },
                            initialValue:
                                (GetIt.I.get<DetailsBloc>().state.data!
                                        as MangaTrackingData)
                                    .volumesOwned,
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
