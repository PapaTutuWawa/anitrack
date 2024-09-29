// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaTrackingDataImpl _$$MangaTrackingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaTrackingDataImpl(
      json['id'] as String,
      const MediumTrackingStateConverter()
          .fromJson((json['state'] as num).toInt()),
      json['title'] as String,
      (json['chaptersRead'] as num).toInt(),
      (json['volumesOwned'] as num).toInt(),
      (json['chaptersTotal'] as num?)?.toInt(),
      json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$MangaTrackingDataImplToJson(
        _$MangaTrackingDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': const MediumTrackingStateConverter().toJson(instance.state),
      'title': instance.title,
      'chaptersRead': instance.chaptersRead,
      'volumesOwned': instance.volumesOwned,
      'chaptersTotal': instance.chaptersTotal,
      'thumbnailUrl': instance.thumbnailUrl,
    };
