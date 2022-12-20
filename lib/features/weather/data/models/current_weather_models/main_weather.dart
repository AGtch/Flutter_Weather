import 'package:json_annotation/json_annotation.dart';

part 'main_weather.g.dart';

@JsonSerializable()
class MainWeather {
  @JsonKey(name: 'temp')
  double? temperature;

  double? getTemperature() => temperature;
  @JsonKey(name: 'temp_min')
  double? minTemperature;
  @JsonKey(name: 'temp_max')
  double? maxTemperature;
  @JsonKey(name: 'pressure')
  num? pressure;

  num? getPressure() => pressure;
  @JsonKey(name: 'humidity')
  double? humidity;

  double? getHumidity() => humidity;
  @JsonKey(name: 'feels_like')
  double? feelLike;
  @JsonKey(name: 'sea_level')
  double? seaLevel;
  @JsonKey(name: 'grnd_level')
  double? grandLevel;

  MainWeather({
    required this.seaLevel,
    required this.grandLevel,
    required this.temperature,
    required this.pressure,
    required this.minTemperature,
    required this.maxTemperature,
    required this.humidity,
    required this.feelLike,
  });

  factory MainWeather.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$MainWeatherToJson(this);
}
