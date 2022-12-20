// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyForecastModel _$HourlyForecastModelFromJson(Map<String, dynamic> json) =>
    HourlyForecastModel(
      code: json['cod'] as String,
      numberOfItemInResult: json['cnt'] as int,
      city: json['city'] as Map<String, dynamic>,
      message: json['message'] as int,
      hourlyForecast: (json['list'] as List<dynamic>)
          .map((e) =>
              WeatherInHourlyForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HourlyForecastModelToJson(
        HourlyForecastModel instance) =>
    <String, dynamic>{
      'cod': instance.code,
      'cnt': instance.numberOfItemInResult,
      'city': instance.city,
      'message': instance.message,
      'list': instance.hourlyForecast,
    };
