import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/handle_time_data.dart';
import '../../../../../core/utils/network_exceptions/network_exceptions.dart';
import '../../../data/models/hourly_forecast_models/hourly_forecast_model.dart';
import '../../../data/models/hourly_forecast_models/weather_in_hourly_forecast_list.dart';
import '../../../data/repositories/imp_weather_repository.dart';
import 'hourly_forecast_state.dart';

class HourlyForecastCubit
    extends Cubit<HourlyForecastState<HourlyForecastModel>> {
  final ImpWeatherRepository impWeatherRepository;

  HourlyForecastCubit(this.impWeatherRepository) : super(HourlyForecastIdle());

  void getHourlyForecastCubit({
    required Map<String, dynamic> query,
  }) async {
    var hourlyForecast = await impWeatherRepository.getHourlyForecast(query);

    hourlyForecast.when(
      success: (HourlyForecastModel hourlyForecastModel) {
        emit(HourlyForecastSuccessState(hourlyForecastModel));
      },
      failure: (NetworkExceptions networkExceptions) {
        print(networkExceptions.toString());
        emit(HourlyForecastError(error: networkExceptions));
      },
    );
  }

  int searchForCurrentTimeInForecast(
      List<WeatherInHourlyForecast> weatherForecast) {
    int indexTarget = (weatherForecast.length / 2).floor();
    for (int i = 1; i < weatherForecast.length; i++) {
      if (getCurrentTime(weatherForecast[i].dateTimeText) ==
          getCurrentTime(weatherForecast[0].dateTimeText)) {
        indexTarget = i;
        return indexTarget;
      }
    }
    print(' index target \n $indexTarget \n index target ');
    return indexTarget;
  }

  List<WeatherInHourlyForecast> getSubForecastList(
      List<WeatherInHourlyForecast> weatherForecast) {
    int target = (searchForCurrentTimeInForecast(weatherForecast) + 1);
    return weatherForecast.sublist(0, target);
  }
}
