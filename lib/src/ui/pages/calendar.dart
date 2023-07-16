import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/calendar_bloc.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/helpers.dart';
import 'package:anitrack/src/ui/widgets/grid_item.dart';
import 'package:anitrack/src/ui/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  unknown;

  String toName() {
    switch (this) {
      case Weekday.monday:
        return t.calendar.days.monday;
      case Weekday.tuesday:
        return t.calendar.days.tuesday;
      case Weekday.wednesday:
        return t.calendar.days.wednesday;
      case Weekday.thursday:
        return t.calendar.days.thursday;
      case Weekday.friday:
        return t.calendar.days.friday;
      case Weekday.saturday:
        return t.calendar.days.saturday;
      case Weekday.sunday:
        return t.calendar.days.sunday;
      case Weekday.unknown:
        return t.calendar.days.unknown;
    }
  }
}

extension AddIfExists<K, V> on Map<K, List<V>> {
  void addOrSet(K key, V value) {
    if (containsKey(key)) {
      this[key]!.add(value);
    } else {
      this[key] = List<V>.from([value]);
    }
  }
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
        builder: (_) => const CalendarPage(),
        settings: const RouteSettings(
          name: calendarRoute,
        ),
      );

  @override
  CalendarPageState createState() => CalendarPageState();
}

class CalendarPageState extends State<CalendarPage> {
  List<Widget> _renderWeekdayList(
    BuildContext context,
    Weekday day,
    Map<Weekday, List<AnimeTrackingData>> data,
  ) {
    if (!data.containsKey(day)) {
      return const [];
    }

    assert(data[day]!.isNotEmpty, 'There should be at least one anime');
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 0,
            right: 16,
            top: 20,
            bottom: 4,
          ),
          child: Text(
            day.toName(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 120 / (100 * (16 / 9)),
        ),
        itemCount: data[day]!.length,
        itemBuilder: (context, index) {
          final anime = data[day]![index];
          return GridItem(
            child: AnimeCoverImage(
              url: anime.thumbnailUrl,
              hero: 'calendar_${anime.id}',
              onTap: () {
                context.read<DetailsBloc>().add(
                      AnimeDetailsRequestedEvent(
                        anime,
                        heroImagePrefix: 'calendar_',
                      ),
                    );
              },
            ),
          );
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final airingAnimeMap = <Weekday, List<AnimeTrackingData>>{};
    for (final anime in GetIt.I.get<AnimeListBloc>().unfilteredAnime) {
      if (!anime.airing) continue;

      final Weekday day;
      switch (anime.broadcastDay) {
        case 'Mondays':
          day = Weekday.monday;
          break;
        case 'Tuesdays':
          day = Weekday.tuesday;
          break;
        case 'Wednesdays':
          day = Weekday.wednesday;
          break;
        case 'Thursdays':
          day = Weekday.thursday;
          break;
        case 'Fridays':
          day = Weekday.friday;
          break;
        case 'Saturdays':
          day = Weekday.saturday;
          break;
        case 'Sundays':
          day = Weekday.sunday;
          break;
        default:
          day = Weekday.unknown;
          break;
      }

      airingAnimeMap.addOrSet(day, anime);
    }

    return BlocListener<CalendarBloc, CalendarState>(
      listenWhen: (previous, current) =>
          previous.refreshing != current.refreshing,
      listener: (context, state) {
        // Force an update
        if (!state.refreshing) {
          setState(() {});
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.calendar.calendar),
          actions: [
            IconButton(
              onPressed: () {
                context.read<CalendarBloc>().add(RefreshPerformedEvent());
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        drawer: getDrawer(context),
        body: Stack(
          children: [
            Positioned(
              left: 8,
              right: 8,
              top: 0,
              bottom: 0,
              child: CustomScrollView(
                slivers: [
                  // Render all available weekdays
                  ..._renderWeekdayList(
                    context,
                    Weekday.unknown,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.monday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.tuesday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.wednesday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.thursday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.friday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.saturday,
                    airingAnimeMap,
                  ),
                  ..._renderWeekdayList(
                    context,
                    Weekday.sunday,
                    airingAnimeMap,
                  ),

                  // Provide a nice bottom padding, while keeping the elastic effect attached
                  // to the bottom-most edge.
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: BlocBuilder<CalendarBloc, CalendarState>(
                buildWhen: (previous, current) =>
                    previous.refreshing != current.refreshing,
                builder: (context, state) {
                  if (!state.refreshing) {
                    return const SizedBox();
                  }

                  return const ModalBarrier(
                    dismissible: false,
                    color: Colors.black54,
                  );
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: BlocBuilder<CalendarBloc, CalendarState>(
                builder: (context, state) {
                  if (!state.refreshing) {
                    return const SizedBox();
                  }

                  return Center(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade800,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(25),
                              child: CircularProgressIndicator(),
                            ),
                            Text(
                              t.settings.importIndicator(
                                current: state.refreshingCount,
                                total: state.refreshingTotal,
                              ),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
