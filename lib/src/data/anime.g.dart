// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeTrackingDataImpl _$$AnimeTrackingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeTrackingDataImpl(
      json['id'] as String,
      const MediumTrackingStateConverter()
          .fromJson((json['state'] as num).toInt()),
      json['title'] as String,
      (json['episodesWatched'] as num).toInt(),
      (json['episodesTotal'] as num?)?.toInt(),
      json['thumbnailUrl'] as String,
      const BoolConverter().fromJson((json['airing'] as num).toInt()),
      json['broadcastDay'] as String?,
    );

Map<String, dynamic> _$$AnimeTrackingDataImplToJson(
        _$AnimeTrackingDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': const MediumTrackingStateConverter().toJson(instance.state),
      'title': instance.title,
      'episodesWatched': instance.episodesWatched,
      'episodesTotal': instance.episodesTotal,
      'thumbnailUrl': instance.thumbnailUrl,
      'airing': const BoolConverter().toJson(instance.airing),
      'broadcastDay': instance.broadcastDay,
    };
