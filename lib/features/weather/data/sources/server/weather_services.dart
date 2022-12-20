import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../../core/utils/constance/strings.dart';
import '../../models/current_weather_models/current_weather.dart';
import '../../models/hourly_forecast.dart';

part 'weather_services.g.dart';

@RestApi(baseUrl: weatherBaseUrl)
abstract class WeatherServices {
  factory WeatherServices(Dio dio, {String baseUrl}) = _WeatherServices;

  @GET('weather')
  Future<CurrentWeather> getWeather(
    @Query('appid') String apiKey,
    @Queries() Map<String, dynamic> queries,
  );

  @GET('forecast')
  Future<HourlyForecastModel> getHourlyForecast(
    @Query('appid') String api_Key,
    @Queries() Map<String, dynamic> newQueries,
  );
}
// @GET('weather')
// Future<WeatherModel> getWeather({@Query("appid") required String apiKey,
//   @Query("lat") required String latitude,
//   @Query("lon") required String longitude});
