// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeTrackingData _$$_AnimeTrackingDataFromJson(Map<String, dynamic> json) =>
    _$_AnimeTrackingData(
      json['id'] as String,
      const MediumTrackingStateConverter().fromJson(json['state'] as int),
      json['title'] as String,
      json['episodesWatched'] as int,
      json['episodesTotal'] as int?,
      json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$_AnimeTrackingDataToJson(
        _$_AnimeTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': const MediumTrackingStateConverter().toJson(instance.state),
      'title': instance.title,
      'episodesWatched': instance.episodesWatched,
      'episodesTotal': instance.episodesTotal,
      'thumbnailUrl': instance.thumbnailUrl,
    };
