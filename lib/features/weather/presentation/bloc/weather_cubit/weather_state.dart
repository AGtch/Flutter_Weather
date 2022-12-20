import 'package:flutter_weather/core/utils/network_exceptions/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherResultState<T> with _$WeatherResultState<T> {
  const factory WeatherResultState.idle() = Idle<T>;

  const factory WeatherResultState.loading() = Loading<T>;

  factory WeatherResultState.successState(T data) = SuccessState<T>;

  const factory WeatherResultState.error({required NetworkExceptions error}) =
      Error<T>;
}
