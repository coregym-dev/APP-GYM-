import 'package:flutter_application_1/Core/network/api_error.dart';
import 'package:flutter_application_1/Core/network/api_service.dart';
import 'package:flutter_application_1/Features/workout/widget/model.dart';

class Repo {
  ApiService apiService = ApiService();

  Future<List<Exercise>?> getdata() async {
    try {
      final response = await apiService.get("/exercises/bodyPart/chest");
      // response = List
      List data = response;

      return data.map((e) => Exercise.fromJson(e)).toList();
    } catch (e) {
      throw ApiError(erroMessage: e.toString());
    }
  }
}
