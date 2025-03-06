# AI-Powered Health Education App

# Overview
HealthEd is an AI-driven platform designed to provide personalized health insights and educational content based on user data such as activity, diet, and sleep. The platform consists of both a website and a mobile application, ensuring accessibility and ease of use for users.

## Code Structure & Dependencies

### Code Structure
```
/app
│── /lib
│   │── main.dart  # Entry point of the Flutter app
│   │── /screens   # contains code for basic ui pages
        |── /datalog #contains code for log entry pages
        |── /login # contains code for login and sign up pages
        |── /settings # contains code for setttings pages
        |── /video # contains code for video player widget
│   │── /services  # Firebase authentication service and API calls
│   │── /widgets    # Contains widgets for the app
│── pubspec.yaml   # Dependency manager for Flutter
```

### Dependencies
Ensure the following dependencies are included in `pubspec.yaml`:
```
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.2.1
  flutter_svg: ^2.0.17
  table_calendar: ^3.0.9
  http: ^1.3.0
  youtube_player_flutter: ^9.1.1  
  firebase_core: ^3.12.1
  firebase_remote_config: ^5.4.2
  firebase_auth: ^5.5.1
  flutter_inappwebview: ^6.1.5
  video_player: ^2.9.3
  youtube_player_iframe: ^4.0.4
  cloud_firestore: ^5.6.5
  flutter_launcher_icons: ^0.13.1
```
## Setup & Execution Steps

### Frontend Setup
Ensure that you have installed Android Studio or Visual Studio Code with Flutter SDK

1. Clone the repository:
2. ```
   https://github.com/Ashw1n2005/SyntaxSquad.git
   ```
3. Install dependencies:
 ```
   flutter pub get
   ```
5. Run the app:
        ```
   flutter run
   ```
   
### Backend Setup
1. Set up Firebase project and enable Remote Config.
2. Store your API keys in Firebase Remote Config.
3. Deploy backend services if required (e.g., Flask/Django for AI processing).


## Expected Output and Technical Details
- AI recommends health-related videos based on user preferences and activity.
- Video content is fetched using APIs and displayed interactively.
- Users receive text-to-speech summaries of video content.
- Firebase Remote Config is used to update AI parameters dynamically.
- The app supports offline functionality with local data caching.

## Additional Requirements & Considerations
- Ensure AI model integration is optimized for mobile inference.
- Implement user authentication if personalized recommendations are needed.
- Ensure compliance with data privacy regulations for handling health-related data.












