// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaTrackingData _$$_MangaTrackingDataFromJson(Map<String, dynamic> json) =>
    _$_MangaTrackingData(
      json['id'] as String,
      const MangaTrackingStateConverter().fromJson(json['state'] as int),
      json['title'] as String,
      json['chaptersRead'] as int,
      json['volumesOwned'] as int,
      json['chaptersTotal'] as int?,
      json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$_MangaTrackingDataToJson(
        _$_MangaTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': const MangaTrackingStateConverter().toJson(instance.state),
      'title': instance.title,
      'chaptersRead': instance.chaptersRead,
      'volumesOwned': instance.volumesOwned,
      'chaptersTotal': instance.chaptersTotal,
      'thumbnailUrl': instance.thumbnailUrl,
    };
