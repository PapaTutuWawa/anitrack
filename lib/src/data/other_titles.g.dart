// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtherTitles _$OtherTitlesFromJson(Map<String, dynamic> json) => _OtherTitles(
  english: json['english'] as String?,
  japanese: json['japanese'] as String?,
  others:
      (json['others'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$OtherTitlesToJson(_OtherTitles instance) =>
    <String, dynamic>{
      'english': instance.english,
      'japanese': instance.japanese,
      'others': instance.others,
    };
