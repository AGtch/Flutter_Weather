import 'package:freezed_annotation/freezed_annotation.dart';

import 'hourly_forecast_models/weather_in_hourly_forecast_list.dart';

part 'hourly_forecast.g.dart';

/**
 * this class is a model of in forecast Api callback
 * we just use [hourlyForecast] object in [getForecastWeather] method to display
 * hourly Forecast list .
 */
@JsonSerializable()
class HourlyForecastModel {
  @JsonKey(name: 'cod')
  String code;
  @JsonKey(name: 'cnt')
  int numberOfItemInResult;

  @JsonKey(name: 'city')
  Map<String, dynamic> city;

  int message;
  @JsonKey(name: 'list')
  List<WeatherInHourlyForecast> hourlyForecast;

  HourlyForecastModel(
      {required this.code,
      required this.numberOfItemInResult,
      required this.city,
      required this.message,
      required this.hourlyForecast});

  factory HourlyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForecastModelToJson(this);
}
