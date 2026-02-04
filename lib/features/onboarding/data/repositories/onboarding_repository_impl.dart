import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import '../../domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  static const _key = 'seenOnboarding';
  final SharedPreferences _prefs;

  OnboardingRepositoryImpl(this._prefs);

  @override
  FutureOr<bool> getSeenOnboarding() async {
    return _prefs.getBool(_key) ?? false;
  }

  @override
  FutureOr<void> setSeenOnboarding(bool seen) async {
    await _prefs.setBool(_key, seen);
  }
}