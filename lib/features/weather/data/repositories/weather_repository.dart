import '../../../../core/utils/api_response.dart';
import '../models/current_weather_models/current_weather.dart';
import '../models/hourly_forecast_models/hourly_forecast_model.dart';

abstract class WeatherRepository {
  Future<ApiResponse<CurrentWeather>> getWeather(Map<String, dynamic> queries);

  Future<ApiResponse<HourlyForecastModel>> getHourlyForecast(
      Map<String, dynamic> queries);
}
