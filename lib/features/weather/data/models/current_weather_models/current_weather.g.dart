// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      base: json['base'] as String?,
      visibility: json['visibility'] as num?,
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      weatherModel: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      code: json['cod'] as num?,
      mainWeather: json['main'] == null
          ? null
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      name: json['name'] as String?,
      positionModel: json['coord'] == null
          ? null
          : PositionModel.fromJson(json['coord'] as Map<String, dynamic>),
      timeOfData: json['dt'] as num?,
      timezone: json['timezone'] as num?,
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'weather': instance.weatherModel,
      'coord': instance.positionModel,
      'base': instance.base,
      'visibility': instance.visibility,
      'main': instance.mainWeather,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.timeOfData,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'cod': instance.code,
      'name': instance.name,
    };
