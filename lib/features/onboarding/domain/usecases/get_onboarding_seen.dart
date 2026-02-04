import '../repositories/onboarding_repository.dart';
import 'dart:async';
class GetOnboardingSeen {
  final OnboardingRepository repo;
  GetOnboardingSeen(this.repo);

  FutureOr<bool> call() async {
    return await repo.getSeenOnboarding();
  }
}