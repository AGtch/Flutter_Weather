import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';

@JsonSerializable()
class Sys {
  double? type;

  double? id;

  String? country;

  double? sunrise;

  double? sunset;

  Sys(this.id, this.country, this.sunrise, this.sunset, this.type);

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);
}
