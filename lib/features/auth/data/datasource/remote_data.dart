import '../models/auth_response_model.dart';
import '../models/user_model.dart';
import 'dart:async';
abstract class AuthRemoteDataSource {
  FutureOr<AuthResponseModel> login(
      {required String email, required String password});
  FutureOr<AuthResponseModel> signup({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String studyYear,
    required String specialite,
    required String area,
  });
  FutureOr<UserModel> getCurrentUser(String token);
  FutureOr<void> forgetPassword({required String email});

  FutureOr<void> resetPassword({
    required String email,
    required String code,
    required String newPassword,
  });
  FutureOr<void> updateUser(
      {required String userId,
      required Map<String, dynamic> data,
      required String token});
  FutureOr<void> logout(String token);
  FutureOr<void> deleteUser(String userId, String token);
}
