import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/other_titles.dart';
import 'package:anitrack/src/data/search_result.dart';
import 'package:anitrack/src/data/source.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/anilist/anilist_client.dart';
import 'package:anitrack/src/service/anilist/model.dart';
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

  // The client to use for AniList GraphQL queries.
  final _anilistClient = AniListClient();

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
      final result = await _anilistClient.searchAnime(state.searchQuery);

      emit(
        state.copyWith(
          working: false,
          searchResults: result
              .map(
                (anime) => SearchResult(
                  anime.title,
                  anime.titleEnglish,
                  anime.titleJapanese,
                  anime.id,
                  anime.episodes,
                  anime.imageUrl,
                  anime.description ?? '',
                  anime.isAiring,
                  anime.broadcastDay,
                ),
              )
              .toList(),
        ),
      );
    } else {
      // Manga
      final result = await _anilistClient.searchManga(state.searchQuery);

      emit(
        state.copyWith(
          working: false,
          searchResults: result
              .map(
                (manga) => SearchResult(
                  manga.title,
                  null,
                  null,
                  manga.id,
                  manga.chapters,
                  manga.imageUrl,
                  manga.description ?? '',
                  // TODO(Unknown): Implement for Manga
                  false,
                  null,
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
                event.result.isAiring,
                event.result.broadcastDay,
                OtherTitles(
                  english: event.result.titleEnglish,
                  japanese: event.result.titleJapanese,
                ),
                TrackingDataSource.anilist,
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
                OtherTitles(
                  english: event.result.titleEnglish,
                  japanese: event.result.titleJapanese,
                ),
                TrackingDataSource.anilist,
              ),
            ),
    );

    GetIt.I.get<NavigationBloc>().add(
      PoppedRouteEvent(),
    );
  }
}
