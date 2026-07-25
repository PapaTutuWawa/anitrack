import 'package:anitrack/src/service/anilist/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class AnimeSearchResult with _$AnimeSearchResult {
  const factory AnimeSearchResult({
    required String title,
    required String? titleEnglish,
    required String? titleJapanese,
    required String id,
    required int? episodes,
    required String imageUrl,
    required String? description,
    required bool isAiring,
    required String? broadcastDay,
  }) = _AnimeSearchResult;

  factory AnimeSearchResult.fromJson(Map<String, Object?> json) {
    final airingDayOfTheWeek = json['nextAiringEpisode'] == null
        ? null
        : getAiringDay(
            (json['nextAiringEpisode']! as Map<String, dynamic>)['airingAt']!
                as int,
          );
    return AnimeSearchResult(
      title: (json['title']! as Map<String, dynamic>)['romaji']! as String,
      titleEnglish: (json['title']! as Map<String, dynamic>)['english'] as String?,
      titleJapanese: (json['title']! as Map<String, dynamic>)['native'] as String?,
      id: (json['id']! as int).toString(),
      episodes: json['episodes'] as int?,
      imageUrl:
          (json['coverImage']! as Map<String, dynamic>)['large']! as String,
      description: json['description'] as String?,
      isAiring: json['status'] == 'RELEASING',
      broadcastDay: airingDayOfTheWeek,
    );
  }
}

@freezed
abstract class MangaSearchResult with _$MangaSearchResult {
  const factory MangaSearchResult({
    required String title,
    required String id,
    required int? chapters,
    required String imageUrl,
    required String? description,
  }) = _MangaSearchResult;

  factory MangaSearchResult.fromJson(Map<String, Object?> json) {
    return MangaSearchResult(
      title: (json['title']! as Map<String, dynamic>)['romaji']! as String,
      id: (json['id']! as int).toString(),
      chapters: json['chapters'] as int?,
      imageUrl:
          (json['coverImage']! as Map<String, dynamic>)['large']! as String,
      description: json['description'] as String?,
    );
  }
}

@freezed
abstract class Anime with _$Anime {
  const factory Anime({
    required String title,
    required bool isAiring,
    required String? broadcastDay,
  }) = _Anime;

  factory Anime.fromJson(Map<String, Object?> json) {
    final airingDayOfTheWeek = json['nextAiringEpisode'] == null
        ? null
        : getAiringDay(
            (json['nextAiringEpisode']! as Map<String, dynamic>)['airingAt']!
                as int,
          );

    return Anime(
      title: (json['title']! as Map<String, dynamic>)['romaji']! as String,
      isAiring: json['status'] == 'RELEASING',
      broadcastDay: airingDayOfTheWeek,
    );
  }
}
