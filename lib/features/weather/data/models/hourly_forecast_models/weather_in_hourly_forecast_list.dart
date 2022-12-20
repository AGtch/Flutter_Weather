import 'package:freezed_annotation/freezed_annotation.dart';

import '../current_weather_models/clouds.dart';
import '../current_weather_models/main_weather.dart';
import '../current_weather_models/sys.dart';
import '../current_weather_models/weather.dart';
import '../current_weather_models/wind.dart';

part 'weather_in_hourly_forecast_list.g.dart';

@JsonSerializable()
class WeatherInHourlyForecast {
  @JsonKey(name: 'dt')
  int? dateTime;
  @JsonKey(name: 'main')
  MainWeather? main;
  List<WeatherModel>? weather;

  Clouds? clouds;
  Wind? wind;
  int? visibility;
  @JsonKey(name: 'pop')
  double? pop;
  Sys? sys;
  @JsonKey(name: 'dt_txt')
  DateTime dateTimeText;

  WeatherInHourlyForecast({
    required this.dateTime,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    required this.sys,
    required this.dateTimeText,
  });

  factory WeatherInHourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherInHourlyForecastFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherInHourlyForecastToJson(this);
}
