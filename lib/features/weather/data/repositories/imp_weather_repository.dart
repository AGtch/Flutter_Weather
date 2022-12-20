import 'package:flutter_weather/core/utils/network_exceptions/network_exceptions.dart';
import 'package:flutter_weather/features/weather/data/repositories/weather_repository.dart';

import '../../../../core/utils/api_response.dart';
import '../../../../core/utils/constance/strings.dart';
import '../models/current_weather_models/current_weather.dart';
import '../models/hourly_forecast.dart';
import '../sources/server/weather_services.dart';

class ImpWeatherRepository implements WeatherRepository {
  WeatherServices weatherServices;

  ImpWeatherRepository({required this.weatherServices});

  @override
  Future<ApiResponse<CurrentWeather>> getWeather(
      Map<String, dynamic> _queries) async {
    try {
      dynamic response =
          await weatherServices.getWeather(weatherApiKey, _queries);
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResponse<HourlyForecastModel>> getHourlyForecast(
      Map<String, dynamic> _queries) async {
    try {
      var response =
          await weatherServices.getHourlyForecast(weatherApiKey, _queries);
      return ApiResponse.success(response);
    } catch (error) {
      print('IN HERRE ----- - error ${error.toString()}');
      return ApiResponse.failure(NetworkExceptions.getDioException(error));
    }
  }
}
