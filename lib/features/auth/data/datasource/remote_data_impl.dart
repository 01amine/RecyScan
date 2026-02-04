import 'dart:convert';
import '../../../../features/auth/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import '../../../../core/errors/exceptions.dart';
import '../models/auth_response_model.dart';
import 'remote_data.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  final String baseUrl;

  AuthRemoteDataSourceImpl({required this.client, required this.baseUrl});

  @override
  FutureOr<AuthResponseModel> login({
    required String email,
    required String password,
  }) async {
    final response = await client.post(
      Uri.parse('$baseUrl/users/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );
    print(response.body);
    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException(
          message: json.decode(response.body)['message'] ?? 'Failed to log in');
    }
  }

  @override
  FutureOr<AuthResponseModel> signup({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String studyYear,
    required String specialite,
    required String area,
  }) async {
    final response = await client.post(
      Uri.parse('$baseUrl/users/register'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'full_name': fullName,
        'phone_number': phoneNumber,
        'email': email,
        'password': password,
        'study_year': studyYear,
        'specialite': specialite,
        'era': area,
      }),
    );

    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException(
          message:
              json.decode(response.body)['message'] ?? 'Failed to sign up');
    }
  }

  @override
  FutureOr<UserModel> getCurrentUser(String token) async {
    final uri = Uri.parse('$baseUrl/users/me');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await client.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      return UserModel.fromJson(data);
    } else {
      throw ServerException(
        message: json.decode(response.body)['message'] ??
            'Failed to fetch user data',
      );
    }
  }

  @override
  FutureOr<void> forgetPassword({required String email}) async {
    final response = await client.post(
      Uri.parse('$baseUrl/users/forget-password?email=$email'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw ServerException(
          message: json.decode(response.body)['message'] ??
              'Failed to send password reset email');
    }
  }

  @override
  FutureOr<void> resetPassword({
    required String email,
    required String code,
    required String newPassword,
  }) async {
    final response = await client.post(
      Uri.parse('$baseUrl/users/reset-password'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'code': code,
        'new_password': newPassword,
      }),
    );

    if (response.statusCode != 200) {
      throw ServerException(
          message: json.decode(response.body)['message'] ??
              'Failed to reset password');
    }
  }

  @override
  FutureOr<void> updateUser({
    required String userId,
    required Map<String, dynamic> data,
    required String token,
  }) async {
    final uri = Uri.parse('$baseUrl/users/update-user/$userId');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await client.patch(
      uri,
      headers: headers,
      body: json.encode(data),
    );

    if (response.statusCode != 200) {
      throw ServerException(
          message: json.decode(response.body)['detail'] ??
              'Failed to update user profile');
    }
  }

  @override
  FutureOr<void> logout(String token) async {
    final userId = 'm';
    final uri = Uri.parse('$baseUrl/$userId');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await client.delete(
      uri,
      headers: headers,
    );
    if (response.statusCode != 200) {
      throw ServerException(
          message: json.decode(response.body)['detail'] ?? 'Failed to logout');
    }
  }

  @override
  FutureOr<void> deleteUser(String userId, String token) async {
    final uri = Uri.parse('$baseUrl/users/$userId');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await client.delete(
      uri,
      headers: headers,
    );

    if (response.statusCode != 200) {
      throw ServerException(
          message:
              json.decode(response.body)['message'] ?? 'Failed to delete user');
    }
  }
}
