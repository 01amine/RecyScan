import 'dart:async';

abstract class AuthLocalDataSource {
  FutureOr<void> saveToken(String token);
  FutureOr<String?> getToken();
  FutureOr<void> clearToken();
}