// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MangaTrackingData _$MangaTrackingDataFromJson(Map<String, dynamic> json) =>
    _MangaTrackingData(
      json['id'] as String,
      const MediumTrackingStateConverter()
          .fromJson((json['state'] as num).toInt()),
      json['title'] as String,
      (json['chaptersRead'] as num).toInt(),
      (json['volumesOwned'] as num).toInt(),
      (json['chaptersTotal'] as num?)?.toInt(),
      json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$MangaTrackingDataToJson(_MangaTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': const MediumTrackingStateConverter().toJson(instance.state),
      'title': instance.title,
      'chaptersRead': instance.chaptersRead,
      'volumesOwned': instance.volumesOwned,
      'chaptersTotal': instance.chaptersTotal,
      'thumbnailUrl': instance.thumbnailUrl,
    };
