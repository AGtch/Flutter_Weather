import 'current_weather_models/current_weather.dart';

class WeatherHandleResponse {
  String latitude;

  String longitude;
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
    required this.latitude,
    required this.longitude,
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
      latitude: currentWeather.positionModel!.latitude.toString(),
      longitude: currentWeather.positionModel!.longitude.toString(),
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

  factory WeatherHandleResponse.fromMap(Map<String, dynamic> dataMap) {
    return WeatherHandleResponse(
        latitude: dataMap['latitude'],
        longitude: dataMap['longitude'],
        weatherMode: dataMap['weatherMode'],
        weatherIcon: dataMap['weatherIcon'],
        weatherTemperature: dataMap['weatherTemperature'],
        weatherPressure: dataMap['weatherPressure'],
        weatherHumidity: dataMap['weatherHumidity'],
        weatherVisibility: dataMap['weatherVisibility'],
        windSpeed: dataMap['windSpeed'],
        timeZone: dataMap['timeZone'],
        cityName: dataMap['cityName'],
        cityId: dataMap['cityId'],
        iconCode: dataMap['iconCode'],
        main: dataMap['main'],
        description: dataMap['description']);
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'weatherMode': weatherMode,
      'weatherIcon': weatherIcon,
      'weatherTemperature': weatherTemperature,
      'weatherPressure': weatherPressure,
      'weatherHumidity': weatherHumidity,
      'weatherVisibility': weatherVisibility,
      'windSpeed': windSpeed,
      'timeZone': timeZone,
      'cityId': cityId,
      'iconCode': iconCode,
      'main': main,
      'description': description,
      'cityName': cityName,
    };
  }
}
