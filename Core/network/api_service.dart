import 'package:dio/dio.dart';
import 'package:flutter_application_1/Core/network/dio_client.dart';

class ApiService {
  final Dio _dio = DioClient.getDio();

  Future<List<dynamic>> searchExercisesByName(String name) async {
    try {
      final response = await _dio.get(
        '/exercises/name/$name',
        queryParameters: {'limit': '15'},
      );
      return response.data;
    } catch (e) {
      throw Exception("حدث خطأ أثناء البحث: $e");
    }
  }

  // 2. تجيب كل التمارين لعضلة معينة
  Future<List<dynamic>> get(String bodyPart) async {
    try {
      final response = await _dio.get('/exercises/bodyPart/$bodyPart');
      return response.data;
    } catch (e) {
      throw Exception("فشل تحميل تمارين العضلة: $e");
    }
  }
}
