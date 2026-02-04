import 'dart:async';

abstract class OnboardingRepository {
  FutureOr<bool> getSeenOnboarding();
  FutureOr<void> setSeenOnboarding(bool seen);
}