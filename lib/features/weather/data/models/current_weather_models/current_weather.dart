import 'package:flutter_weather/features/weather/data/models/current_weather_models/position_model.dart';
import 'package:flutter_weather/features/weather/data/models/current_weather_models/sys.dart';
import 'package:flutter_weather/features/weather/data/models/current_weather_models/weather.dart';
import 'package:flutter_weather/features/weather/data/models/current_weather_models/wind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'main_weather.dart';

part 'current_weather.g.dart';

@JsonSerializable()
class CurrentWeather {
  @JsonKey(name: 'weather')
  List<WeatherModel>? weatherModel;

  @JsonKey(name: 'coord')
  PositionModel? positionModel;

  String? base;
  num? visibility;
  @JsonKey(name: 'main')
  MainWeather? mainWeather;
  Wind? wind;
  Clouds? clouds;
  @JsonKey(name: 'dt')
  num? timeOfData;
  Sys? sys;
  num? timezone;
  int? id;
  @JsonKey(name: 'cod')
  num? code;
  String? name;

  CurrentWeather({
    required this.sys,
    required this.base,
    required this.visibility,
    required this.clouds,
    required this.wind,
    required this.weatherModel,
    required this.id,
    required this.code,
    required this.mainWeather,
    required this.name,
    required this.positionModel,
    required this.timeOfData,
    required this.timezone,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
