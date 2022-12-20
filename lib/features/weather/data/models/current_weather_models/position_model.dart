import 'package:json_annotation/json_annotation.dart';

part 'position_model.g.dart';

@JsonSerializable()
class PositionModel {
  @JsonKey(name: 'lon')
  double longitude;

  double getLongitude() => longitude;
  @JsonKey(name: 'lat')
  double latitude;

  double getLatitude() => latitude;

  PositionModel({
    required this.longitude,
    required this.latitude,
  });

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);

  Map<String, dynamic> toJson() => _$PositionModelToJson(this);
}
