import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/auth_response.dart';
import '../entities/user.dart';
import 'dart:async';
abstract class AuthRepository {
  FutureOr<Either<Failure, AuthResponse>> login(
      {required String email, required String password});
  FutureOr<Either<Failure, AuthResponse>> signup({
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String studyYear,
    required String specialite,
    required String area,
  });
  FutureOr<Either<Failure, void>> saveToken(String token);
  FutureOr<Either<Failure, String?>> getToken();
  FutureOr<Either<Failure, void>> clearToken();
  FutureOr<Either<Failure, User>> getCurrentUser();
  FutureOr<Either<Failure, void>> forgetPassword({required String email});

  FutureOr<Either<Failure, void>> resetPassword({
    required String email,
    required String code,
    required String newPassword,
  });
  FutureOr<Either<Failure, void>> updateUser({required String userId, required Map<String, dynamic> data});
  FutureOr<Either<Failure, void>> logout();
  FutureOr<Either<Failure, void>> deleteUser(String userId);
}