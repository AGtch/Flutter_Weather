import 'package:dio/dio.dart';

class DioHelper {
  Dio initialDio() {
    final Dio dio = Dio(
      BaseOptions(
        sendTimeout: 30 * 1000,
        connectTimeout: 30 * 1000,
        receiveTimeout: 30 * 1000,
      ),
    );
    return dio;
  }
}
