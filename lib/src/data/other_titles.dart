import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_titles.freezed.dart';
part 'other_titles.g.dart';

class OtherTitlesConverter implements JsonConverter<OtherTitles, String> {
  const OtherTitlesConverter();

  @override
  OtherTitles fromJson(String json) => OtherTitles.fromJson(jsonDecode(json) as Map<String, dynamic>);

  @override
  String toJson(OtherTitles object) => jsonEncode(object.toJson());
}

@freezed
abstract class OtherTitles with _$OtherTitles {
  factory OtherTitles({
    String? english,
    String? japanese,
    @Default([]) List<String> others,
  }) = _OtherTitles;

  /// JSON
  factory OtherTitles.fromJson(Map<String, dynamic> json) =>
      _$OtherTitlesFromJson(json);
}
