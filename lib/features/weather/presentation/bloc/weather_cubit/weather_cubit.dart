import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/weather_cubit/weather_state.dart';

import '../../../../../core/utils/network_exceptions/network_exceptions.dart';
import '../../../data/models/current_weather_models/current_weather.dart';
import '../../../data/repositories/imp_weather_repository.dart';

class WeatherCubit extends Cubit<WeatherResultState<CurrentWeather>> {
  ImpWeatherRepository impWeatherRepository;

  WeatherCubit(this.impWeatherRepository) : super(Idle());

  void getWeather({required Map<String, dynamic> query}) async {
    var currentWeather = await impWeatherRepository.getWeather(query);

    currentWeather.when(
      success: (CurrentWeather weather) {
        //emit(Loading());
        print('IN WEATHER REPO');
        print(weather);
        // print(weatherHandleResponse.cityName);
        emit(SuccessState(weather));
      },
      failure: (NetworkExceptions networkExceptions) {
        print(networkExceptions.toString());
        emit(Error(error: networkExceptions));
      },
    );
  }

// void searchForWeatherInCity({required String city}) async {
//
//   dynamic currentWeather = await impWeatherRepository.getWeather(query);
//
//   currentWeather.when(
//     success: (CurrentWeather weather) {
//       emit(Loading());
//       print('IN WEATHER REPO');
//       print(weather);
//       // print(weatherHandleResponse.cityName);
//       emit(SuccessState(weather));
//     },
//     failure: (NetworkExceptions networkExceptions) {
//       print(networkExceptions);
//       emit(Error(error: networkExceptions));
//     },
//   );
// }
}
