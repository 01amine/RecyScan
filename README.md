# RecyScan

RecyScan is a Flutter app that combines onboarding and auth flows with recycling-focused features like camera-based waste scanning, an AR details view, and a smart recycling map. The codebase follows a layered (data/domain/presentation) structure with dependency injection and state management.

**What is in this repo today**
- Auth flow with login, signup, profile, and forgot password screens.
- Animated onboarding and splash flows.
- Waste scanning via camera upload to an API and value estimation.
- AR view overlay showing composition and estimated value.
- Smart map screen using Google Maps markers (provider-driven data).
- Smart bin / plastic deposit flow (deposit and reward points) wired to API calls.

**Tech stack**
- Flutter (Dart SDK ^3.9.2)
- State management: `flutter_bloc`, `provider`
- DI: `get_it`
- Networking: `http`
- Local storage: `shared_preferences`
- Env config: `flutter_dotenv`
- Device features: `camera`, `google_maps_flutter`, `ar_flutter_plugin`, `geolocator`

**Architecture**
- Feature-first structure under `lib/features/`.
- Clean separation of `data/`, `domain/`, and `presentation/` layers.
- Use cases sit in `domain/usecases` and are injected via `lib/di/injection_container.dart`.

**Getting started**
1. Install Flutter and the appropriate platform tooling (Android Studio / Xcode).
2. Copy environment variables:

```bash
copy .env.example .env
```

3. Fetch dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```