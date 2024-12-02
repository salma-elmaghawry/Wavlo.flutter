import 'package:dio/dio.dart';

class AuthenticationService {
  final Dio _dio = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
    ),
  );

  final String loginUrl = "https://wevlo-dbetbjfygtecfvbz.canadacentral-01.azurewebsites.net/Authentication/Login";
  final String registerUrl = "https://wevlo-dbetbjfygtecfvbz.canadacentral-01.azurewebsites.net/Authentication/Register";

  // Login method
  Future<Response> login(String email, String password) async {
    try {
      final response = await _dio.post(
        loginUrl,
        data: {
          "email": email,
          "password": password,
        },
      );
      return response;
    } on DioError catch (e) {
      throw e.response?.data ?? "An error occurred";
    }
  }

  // Register method
  Future<Response> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await _dio.post(
        registerUrl,
        data: {
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "password": password,
          "confirmPassword": confirmPassword,
        },
      );
      return response;
    } on DioError catch (e) {
      throw e.response?.data ?? "An error occurred";
    }
  }
}
