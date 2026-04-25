import 'package:dio/dio.dart';

class DioClient {
  static Dio? _dio;

  static Dio getDio() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://exercisedb.p.rapidapi.com",
        contentType: "application/json",
        headers: {
          'x-rapidapi-key':
              'b45636aa03mshf741be76b3e95e8p116f0bjsn53904e8c3041',
          'x-rapidapi-host': 'exercisedb.p.rapidapi.com',
        },
      ),
    );

    // دي بتطبع لك الـ Request والـ Response في الـ Console عشان تتابع الداتا
    _dio!.interceptors.add(
      LogInterceptor(responseBody: true, requestBody: true),
    );

    return _dio!;
  }
}
