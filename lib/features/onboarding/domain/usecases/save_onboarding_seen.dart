import '../repositories/onboarding_repository.dart';
import 'dart:async';
class SaveOnboardingSeen {
  final OnboardingRepository repo;
  SaveOnboardingSeen(this.repo);

  FutureOr<void> call() async {
    await repo.setSeenOnboarding(true);
  }
}