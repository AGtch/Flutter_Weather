import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/network_exceptions/network_exceptions.dart';

part 'hourly_forecast_state.freezed.dart';

@freezed
class HourlyForecastState<T> with _$HourlyForecastState<T> {
  const factory HourlyForecastState.HourlyForecastIdle() =
      HourlyForecastIdle<T>;

  const factory HourlyForecastState.HourlyForecastLoading() =
      HourlyForecastLoading<T>;

  factory HourlyForecastState.HourlyForecastSuccessState(T data) =
      HourlyForecastSuccessState<T>;

  const factory HourlyForecastState.HourlyForecastError(
      {required NetworkExceptions error}) = HourlyForecastError<T>;
}
