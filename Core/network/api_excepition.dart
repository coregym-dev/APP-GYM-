import 'package:dio/dio.dart';
import 'package:flutter_application_1/Core/network/api_error.dart';

class ApiExcepition {
  static ApiError handle(DioError error) {
    final message = error.response?.statusMessage;

    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(erroMessage: "Connection timeout");
      case DioErrorType.unknown:
        return ApiError(erroMessage: "unKown user");

      default:
        return ApiError(erroMessage: "Something went wrong");
    }
  }
}
