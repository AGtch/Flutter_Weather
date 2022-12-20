// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_in_hourly_forecast_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherInHourlyForecast _$WeatherInHourlyForecastFromJson(
        Map<String, dynamic> json) =>
    WeatherInHourlyForecast(
      dateTime: json['dt'] as int?,
      main: json['main'] == null
          ? null
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int?,
      pop: (json['pop'] as num?)?.toDouble(),
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      dateTimeText: DateTime.parse(json['dt_txt'] as String),
    );

Map<String, dynamic> _$WeatherInHourlyForecastToJson(
        WeatherInHourlyForecast instance) =>
    <String, dynamic>{
      'dt': instance.dateTime,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dateTimeText.toIso8601String(),
    };
