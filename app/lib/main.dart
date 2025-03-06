import 'package:app/services/firebase_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: "AIzaSyCXJnqnaoICqJdzQOe1UCZunzllmotF65c",
    authDomain: "healthed-2fc02.firebaseapp.com",
    projectId: "healthed-2fc02",
    storageBucket: "healthed-2fc02.firebasestorage.app",
    messagingSenderId: "168873893476",
    appId: "1:168873893476:web:fbff2001e5034c18f2c971",
  ),
  );
  // ignore: unused_local_variable
  FirebaseService firebaseService = FirebaseService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: SplashScreen(),
    );
  }
}





  