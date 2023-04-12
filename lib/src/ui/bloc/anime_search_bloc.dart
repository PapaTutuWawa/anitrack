import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/search_result.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart' as list;
import 'package:anitrack/src/ui/bloc/navigation_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:jikan_api/jikan_api.dart';

part 'anime_search_state.dart';
part 'anime_search_event.dart';
part 'anime_search_bloc.freezed.dart';

class AnimeSearchBloc extends Bloc<AnimeSearchEvent, AnimeSearchState> {
  AnimeSearchBloc() : super(AnimeSearchState()) {
    on<AnimeSearchRequestedEvent>(_onRequested);
    on<SearchQueryChangedEvent>(_onQueryChanged);
    on<SearchQuerySubmittedEvent>(_onQuerySubmitted);
    on<ResultTappedEvent>(_onResultTapped);
  }

  Future<void> _onRequested(
    AnimeSearchRequestedEvent event,
    Emitter<AnimeSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        searchQuery: '',
        working: false,
        searchResults: [],
        trackingType: event.type,
      ),
    );

    GetIt.I.get<NavigationBloc>().add(
          PushedNamedEvent(
            const NavigationDestination(animeSearchRoute),
          ),
        );
  }

  Future<void> _onQueryChanged(
    SearchQueryChangedEvent event,
    Emitter<AnimeSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        searchQuery: event.query,
      ),
    );
  }

  Future<void> _onQuerySubmitted(
    SearchQuerySubmittedEvent event,
    Emitter<AnimeSearchState> emit,
  ) async {
    if (state.searchQuery.isEmpty) return;

    emit(
      state.copyWith(
        working: true,
      ),
    );

    if (state.trackingType == TrackingMediumType.anime) {
      // Anime
      final result = await Jikan().searchAnime(
        query: state.searchQuery,
      );

      emit(
        state.copyWith(
          working: false,
          searchResults: result
              .map(
                (Anime anime) => SearchResult(
                  anime.title,
                  anime.malId.toString(),
                  anime.episodes,
                  anime.imageUrl,
                  anime.synopsis ?? '',
                ),
              )
              .toList(),
        ),
      );
    } else {
      // Manga
      final result = await Jikan().searchManga(
        query: state.searchQuery,
      );

      emit(
        state.copyWith(
          working: false,
          searchResults: result
              .map(
                (Manga manga) => SearchResult(
                  manga.title,
                  manga.malId.toString(),
                  manga.chapters,
                  manga.imageUrl,
                  manga.synopsis ?? '',
                ),
              )
              .toList(),
        ),
      );
    }
  }

  Future<void> _onResultTapped(
    ResultTappedEvent event,
    Emitter<AnimeSearchState> emit,
  ) async {
    GetIt.I.get<list.AnimeListBloc>().add(
          state.trackingType == TrackingMediumType.anime
              ? list.AnimeAddedEvent(
                  AnimeTrackingData(
                    event.result.id,
                    MediumTrackingState.ongoing,
                    event.result.title,
                    0,
                    event.result.total,
                    event.result.thumbnailUrl,
                  ),
                )
              : list.MangaAddedEvent(
                  MangaTrackingData(
                    event.result.id,
                    MediumTrackingState.ongoing,
                    event.result.title,
                    0,
                    0,
                    event.result.total,
                    event.result.thumbnailUrl,
                  ),
                ),
        );

    GetIt.I.get<NavigationBloc>().add(
          PoppedRouteEvent(),
        );
  }
}
