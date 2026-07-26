import 'dart:async';

import 'package:anitrack/src/data/source.dart';
import 'package:anitrack/src/service/anilist/anilist_client.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:jikan_api/jikan_api.dart';

part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(CalendarState(false, 0, 0)) {
    on<RefreshPerformedEvent>(_onRefreshPerformed);
  }

  Future<void> _onRefreshPerformed(
    RefreshPerformedEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(
      state.copyWith(
        refreshing: true,
        refreshingCount: 0,
        refreshingTotal: 0,
      ),
    );

    final al = GetIt.I.get<AnimeListBloc>();
    final animes = al.unfilteredAnime.where((anime) => anime.airing);
    emit(
      state.copyWith(
        refreshing: true,
        refreshingCount: 0,
        refreshingTotal: animes.length,
      ),
    );

    for (final anime in animes) {
      emit(state.copyWith(refreshingCount: state.refreshingCount + 1));

      String? broadcastDay;
      bool airing;
      int? episodes;
      try {
        switch (anime.source) {
          case TrackingDataSource.mal:
            final apiData = await Jikan().getAnime(int.parse(anime.id));
            airing = apiData.airing;
            broadcastDay = apiData.broadcast?.split(' ').first;
            episodes = apiData.episodes;
          case TrackingDataSource.anilist:
            final apiData = await GetIt.I.get<AniListClient>().getAnimeById(
              anime.id,
            );
            airing = apiData.isAiring;
            broadcastDay = apiData.broadcastDay;
            episodes = apiData.episodes;
        }
      } catch (ex) {
        print('API request for anime ${anime.id} failed: $ex');
        continue;
      }

      print('Anime "${anime.title}": airing=$airing; episodes=$episodes');
      if (!airing) {
        al.add(
          AnimeUpdatedEvent(
            anime.copyWith(
              airing: false,
              broadcastDay: null,
              episodesTotal: episodes,
            ),
            commit: true,
          ),
        );
      } else if (anime.broadcastDay != broadcastDay) {
        print('Updating Anime "${anime.title}": broadcastDay=$broadcastDay');
        al.add(
          AnimeUpdatedEvent(
            anime.copyWith(
              airing: true,
              broadcastDay: broadcastDay,
              episodesTotal: episodes,
            ),
            commit: true,
          ),
        );
      }

      // Prevent hammering Jikan/AniList
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }

    emit(state.copyWith(refreshing: false));
  }
}
