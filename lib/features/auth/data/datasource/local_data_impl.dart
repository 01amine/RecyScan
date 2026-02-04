import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import '../../../../core/errors/exceptions.dart';
import 'local_data.dart';


class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  static const String CACHED_AUTH_TOKEN = 'CACHED_AUTH_TOKEN';

  @override
  FutureOr<void> saveToken(String token) {
    return sharedPreferences.setString(CACHED_AUTH_TOKEN, token);
  }

  @override
  FutureOr<String?> getToken() async {
    try {
      final token = sharedPreferences.getString(CACHED_AUTH_TOKEN);
      return token;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  FutureOr<void> clearToken() {
    return sharedPreferences.remove(CACHED_AUTH_TOKEN);
  }
}