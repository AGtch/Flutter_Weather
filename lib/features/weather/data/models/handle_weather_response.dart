import 'current_weather_models/current_weather.dart';

class WeatherHandleResponse {
  String? weatherMode;
  String? weatherIcon;
  double? weatherTemperature;
  String? weatherPressure;
  String? weatherHumidity;
  String? weatherVisibility;
  String? windSpeed;
  String? timeZone;
  int? cityId;
  int? iconCode;
  String? main;
  String? description;

  String? cityName;

  WeatherHandleResponse({
    required this.weatherMode,
    required this.weatherIcon,
    required this.weatherTemperature,
    required this.weatherPressure,
    required this.weatherHumidity,
    required this.weatherVisibility,
    required this.windSpeed,
    required this.timeZone,
    required this.cityName,
    required this.cityId,
    required this.iconCode,
    required this.main,
    required this.description,
  });

  factory WeatherHandleResponse.convertCurrentWeather(
      {required CurrentWeather currentWeather}) {
    return WeatherHandleResponse(
      weatherMode: currentWeather.weatherModel![0].getWeatherMode,
      main: currentWeather.weatherModel![0].main,
      weatherIcon: currentWeather.weatherModel![0].getWeatherIcon,
      weatherTemperature: currentWeather.mainWeather!.temperature,
      weatherPressure: currentWeather.mainWeather!.pressure.toString(),
      weatherHumidity: currentWeather.mainWeather!.humidity.toString(),
      weatherVisibility: currentWeather.visibility.toString(),
      windSpeed: currentWeather.wind!.speed.toString(),
      timeZone: currentWeather.timezone.toString(),
      cityName: currentWeather.name,
      cityId: currentWeather.id,
      iconCode: currentWeather.weatherModel![0].id,
      description: currentWeather.weatherModel![0].description,
    );
  }
}
