import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/navigation_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'details_state.dart';
part 'details_event.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsState()) {
    on<AnimeDetailsRequestedEvent>(_onAnimeRequested);
    on<MangaDetailsRequestedEvent>(_onMangaRequested);
    on<DetailsUpdatedEvent>(_onDetailsUpdated);
    on<ItemRemovedEvent>(_onItemRemoved);
  }

  Future<void> _onAnimeRequested(AnimeDetailsRequestedEvent event, Emitter<DetailsState> emit) async {
    emit(
      state.copyWith(
        trackingType: TrackingMediumType.anime,
        data: event.anime,
      ),
    );

    GetIt.I.get<NavigationBloc>().add(
      PushedNamedEvent(
        const NavigationDestination(detailsRoute),
      ),
    );
  }

  Future<void> _onMangaRequested(MangaDetailsRequestedEvent event, Emitter<DetailsState> emit) async {
    emit(
      state.copyWith(
        trackingType: TrackingMediumType.manga,
        data: event.manga,
      ),
    );

    GetIt.I.get<NavigationBloc>().add(
      PushedNamedEvent(
        const NavigationDestination(detailsRoute),
      ),
    );
  }

  Future<void> _onDetailsUpdated(DetailsUpdatedEvent event, Emitter<DetailsState> emit) async {
    if (state.trackingType == TrackingMediumType.anime) {
      emit(
        state.copyWith(
          data: event.data,
        ),
      );

      await GetIt.I.get<DatabaseService>().updateAnime(event.data as AnimeTrackingData);

      GetIt.I.get<AnimeListBloc>().add(
        AnimeUpdatedEvent(event.data as AnimeTrackingData),
      );
    } else {
      emit(
        state.copyWith(
          data: event.data,
        ),
      );

      await GetIt.I.get<DatabaseService>().updateManga(event.data as MangaTrackingData);

      GetIt.I.get<AnimeListBloc>().add(
        MangaUpdatedEvent(event.data as MangaTrackingData),
      );
    }
  }

  Future<void> _onItemRemoved(ItemRemovedEvent event, Emitter<DetailsState> emit) async {
    emit(
      state.copyWith(
        data: null,
      ),
    );

    /// Remove the item from the database
    final bloc = GetIt.I.get<AnimeListBloc>();
    switch (event.trackingType) {
      case TrackingMediumType.anime:
        bloc.add(AnimeRemovedEvent(event.id));
        break;
      case TrackingMediumType.manga:
        bloc.add(MangaRemovedEvent(event.id));
        break;
    }

    // Navigate back
    GetIt.I.get<NavigationBloc>().add(PoppedRouteEvent());
  }
}
