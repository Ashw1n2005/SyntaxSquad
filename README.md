Dependencies
Flutter Dependencies
This section lists the packages your app uses, making it easier for others to install.

yaml
Copy
Edit
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.15.0  # Firebase Core
  firebase_auth: ^4.10.0  # Firebase Authentication
  provider: ^6.1.3        # State Management
  fl_chart: ^0.62.0       # Charts & Graphs
  dio: ^5.2.1             # HTTP Client for API requests
  shared_preferences: ^2.2.1  # Local Storage
  google_fonts: ^6.1.0    # Custom Fonts
  intl: ^0.18.1           # Date & Number Formatting
Dev Dependencies
Used for testing and linting the code.

yaml
Copy
Edit
dev_dependencies:
  flutter_test:
    sdk: flutter
  lint: ^2.1.2
Installation
How to set up the project on a new machine:

sh
Copy
Edit
git clone https://github.com/yourusername/HealthEd.git
cd HealthEd
flutter pub get
flutter run












