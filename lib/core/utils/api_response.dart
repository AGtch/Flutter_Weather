import 'package:flutter_weather/core/utils/network_exceptions/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse.success(T data) = Success<T>;

  // const factory ApiResponse.loading() = Loading;
  factory ApiResponse.failure(NetworkExceptions networkExceptions) = Failure<T>;
}
