import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/utils/constance/colors.dart';
import 'core/utils/converter.dart';
import 'features/search/data/repositories/place_autocoplete_repository.dart';
import 'features/search/data/sources/server/place_autocomplete_service.dart';
import 'features/search/presentation/bloc/google_auto_complete_cubit.dart';
import 'features/weather/data/repositories/imp_weather_repository.dart';
import 'features/weather/data/sources/server/dio_helper.dart';
import 'features/weather/data/sources/server/weather_services.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<DioHelper>(DioHelper());
  getIt.registerFactory<ImpWeatherRepository>(
      () => ImpWeatherRepository(weatherServices: getIt()));
  getIt.registerFactory<GoogleAutoCompleteRepository>(
      () => GoogleAutoCompleteRepository(getIt()));
  getIt.registerFactory<WeatherServices>(
    () => WeatherServices(
      Dio(
        BaseOptions(
          sendTimeout: 20 * 1000,
          connectTimeout: 20 * 1000,
          receiveTimeout: 20 * 1000,
        ),
      ),
    ),
  );
  getIt.registerFactory<GoogleAutoCompletePlaceService>(
    () => GoogleAutoCompletePlaceService(
      Dio(
        BaseOptions(
          sendTimeout: 20 * 1000,
          connectTimeout: 20 * 1000,
          receiveTimeout: 20 * 1000,
        ),
      ),
    ),
  );
  getIt.registerSingleton<AppColor>(AppColor());
  getIt.registerLazySingleton<Converter>(() => Converter());
  getIt.registerLazySingleton<GoogleAutoCompleteCubit>(
      () => GoogleAutoCompleteCubit(googleAutoCompleteRepository: getIt()));
  // getIt.registerFactory<PositionCubit>(() => PositionCubit());
  // getIt
  //     .registerFactory<HourlyForecastCubit>(() => HourlyForecastCubit(getIt()));
  // getIt.registerFactory<WeatherCubit>(() => WeatherCubit(getIt()));
}
