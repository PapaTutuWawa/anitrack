import 'package:freezed_annotation/freezed_annotation.dart';

enum TrackingDataSource {
  mal('mal'),
  anilist('anilist');

  const TrackingDataSource(this.value);

  final String value;
}

class TrackingDataSourceConverter
    implements JsonConverter<TrackingDataSource, String> {
  const TrackingDataSourceConverter();

  @override
  TrackingDataSource fromJson(String json) =>
      TrackingDataSource.values.where((val) => val.value == json).first;

  @override
  String toJson(TrackingDataSource source) => source.value;
}
