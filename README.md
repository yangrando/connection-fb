# Connection FB

Flutter sample project with Firebase integration, organized in layers and using GetX for state management and navigation.

## Goal

Demonstrate a simple authentication flow with Firebase:

- Email/password login
- Google account login
- Session persistence with Firebase Auth
- Screen navigation with GetX

## Tech Stack

- Flutter (SDK 3.x)
- Dart
- Firebase Core
- Firebase Authentication
- Google Sign-In
- GetX

## Architecture and Organization

The project follows a Clean Architecture-inspired structure, separating responsibilities by layer:

```txt
lib/
  data/
    service/
      auth_service.dart        # Firebase Auth/Google Sign-In access rules
  presentation/
    login/
      login_controller.dart    # Login screen state and actions (GetX)
      login_page.dart          # Login screen UI
    home/
      home_page.dart           # Post-login screen + logout
  firebase_options.dart        # Firebase multi-platform configuration
  main.dart                    # App bootstrap
```

## Current Flow

1. App starts and initializes Firebase in `main.dart`.
2. User logs in with email/password or Google on `LoginPage`.
3. `LoginController` delegates authentication to `AuthService`.
4. On success, navigation goes to `HomePage`.
5. On Home, user can sign out (logout).

## Prerequisites

- Flutter installed and configured
- Firebase project created
- Android Studio/Xcode (depending on your target platform)
- Google account for social login testing

## Firebase Setup

This repository already includes `lib/firebase_options.dart`, but for your own environment it is recommended to generate it again:

```bash
flutterfire configure
```

If needed, also validate platform files:

- Android: `android/app/google-services.json`
- iOS: `ios/Runner/GoogleService-Info.plist`

In Firebase Console, enable authentication providers:

- Email/Password
- Google

## Run Locally

```bash
flutter pub get
flutter run
```

## Tests

Run tests:

```bash
flutter test
```

## Improvements Applied in This Repository

- Navigation to Home only after successful authentication.
- `TextEditingController` disposed in controller lifecycle.
- `HomePage` now displays authenticated user info and logout action.
- Initial widget test updated to reflect the real login screen.

## Suggested Next Steps

- User registration flow
- Password recovery
- Error handling by exception type (user-friendly messages)
- Test coverage improvements (unit + widget + integration)
- Domain layer (use cases) to better isolate business rules
