# AI-Powered Health Education App

## Code Structure & Dependencies

### Code Structure
```
/health_edu_ai_app
│── /lib
│   │── main.dart  # Entry point of the Flutter app
│   │── /screens   # Contains UI screens
│   │── /services  # AI processing and API calls
│   │── /models    # Data models for video recommendations
│── pubspec.yaml   # Dependency manager for Flutter
│── README.md      # Project documentation
```

### Dependencies
Ensure the following dependencies are included in `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: latest_version
  firebase_remote_config: latest_version
  http: latest_version
  youtube_player_flutter: latest_version
  provider: latest_version
  flutter_tts: latest_version
```

## Setup & Execution Steps

### Backend Setup
1. Set up Firebase project and enable Remote Config.
2. Store your API keys in Firebase Remote Config.
3. Train or configure the AI model for video recommendations.
4. Deploy backend services if required (e.g., Flask/Django for AI processing).

### Frontend Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/yourrepo/health_edu_ai_app.git
   cd health_edu_ai_app
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## Expected Output and Technical Details
- AI recommends health-related videos based on user preferences and activity.
- Video content is fetched using APIs and displayed interactively.
- Users receive text-to-speech summaries of video content.
- Firebase Remote Config is used to update AI parameters dynamically.
- The app supports offline functionality with local data caching.

## Additional Requirements & Considerations
- Ensure AI model integration is optimized for mobile inference.
- Implement user authentication if personalized recommendations are needed.
- Consider using GraphQL if managing complex queries.
- Ensure compliance with data privacy regulations for handling health-related data.

For any issues, feel free to raise a ticket or contribute to the repository!











