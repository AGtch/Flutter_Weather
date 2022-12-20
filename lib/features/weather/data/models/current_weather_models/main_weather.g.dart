// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) => MainWeather(
      seaLevel: (json['sea_level'] as num?)?.toDouble(),
      grandLevel: (json['grnd_level'] as num?)?.toDouble(),
      temperature: (json['temp'] as num?)?.toDouble(),
      pressure: json['pressure'] as num?,
      minTemperature: (json['temp_min'] as num?)?.toDouble(),
      maxTemperature: (json['temp_max'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      feelLike: (json['feels_like'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MainWeatherToJson(MainWeather instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'temp_min': instance.minTemperature,
      'temp_max': instance.maxTemperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'feels_like': instance.feelLike,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grandLevel,
    };
