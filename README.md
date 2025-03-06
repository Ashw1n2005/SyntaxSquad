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
 ```
   https://github.com/Ashw1n2005/SyntaxSquad.git
   ```
2. Install dependencies:
   ```
   flutter pub get
   ```
3. Run the app:
   ```
   flutter run
   ```
   Choose your mobile emulator or Chrome/Microsoft edge for running the app in the devices option which will be asked before running the code.
   
### Backend Setup
1. Set up Firebase project and enable Remote Config.
2. Store your API keys in Firebase Remote Config.
3. Deploy backend services if required (e.g., Flask/Django for AI processing).


## Expected Output
- AI recommends health-related videos based on user preferences and activity.
- Video content is fetched using APIs and displayed interactively.
- Users receive text-to-speech summaries of video content.
- Firebase Remote Config is used to update AI parameters dynamically.
- The app supports offline functionality with local data caching.

# Technical Details
 Tech Stack & Frameworks
 
        Frontend (Mobile & Web App)
                
                Flutter (for cross-platform mobile development)
                HTML/CSS (for web-based dashboard)
        
        Backend
        
                Firebase Authentication (for user authentication)
        
        Database & Storage
        
                Firebase Firestore (real-time sync for user data)
                Hive database
        
        AI & Machine Learning
        
                TensorFlow.js (for in-browser AI processing)
                Scikit-learn & Pandas (Python backend) (for data analytics)
        
        APIs & Integrations
                
                Wearable Device APIs (Google Fit / Apple HealthKit) (for collecting health metrics)
                YouTube API (for fetching recommended health videos)
                Firebase Remote Config (for dynamically updating AI parameters)
                
       


## Additional Requirements & Considerations
- Ensure AI model integration is optimized for mobile inference.
- Implement user authentication if personalized recommendations are needed.
- Ensure compliance with data privacy regulations for handling health-related data.










# HealthEd - AI-Powered Personalized Health Education Website

## Overview

HealthEd is an AI-driven platform designed to provide personalized health insights and educational content based on user data such as activity, diet, and sleep. The platform consists of both a website and a mobile application, ensuring accessibility and ease of use for users.

## Features

- **Personalized Health Insights**: AI analyzes user data to provide tailored health recommendations.
- **Educational Content**: Access articles, videos, and interactive sessions on various health topics.
- **User Dashboard**: Track health progress, set goals, and view analytics.
- **AI Chatbot**: Get instant health-related answers and guidance.
- **Community Support**: Engage in forums and discussions with health experts and other users.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript, React.js
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **AI/ML**: TensorFlow.js, OpenAI API
- **Authentication**: Firebase Authentication
- **Hosting**: Vercel / AWS

## Installation & Setup

### Prerequisites

Ensure you have the following installed:

- Node.js
- npm / yarn
- MongoDB (if running locally)

### Steps to Run Locally

1. Clone the repository:
   ```sh
   git clone https://github.com/Ashw1n2005/SyntaxSquad.git
   cd HealthEd
   ```

2. Install dependencies:
   ```sh
   npm install
   ```

3. Set up environment variables:
   - Create a `.env` file in the root directory.
   - Add required credentials (e.g., API keys, database URL).

4. Start the development server:
   ```sh
   npm run dev
   ```


## Contribution

We welcome contributions! Follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```sh
   git checkout -b feature-name
   ```
3. Commit changes and push to your fork.
4. Open a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.














