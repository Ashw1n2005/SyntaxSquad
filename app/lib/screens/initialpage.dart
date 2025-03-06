import 'package:app/screens/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 60, 93),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/ellipsesvg.png",
                width: double.infinity,
                height: screenHeight/2,
              ),
              Image.asset(
                "assets/images/Medical Shield.png",
                width: screenWidth * 0.4,
                height: screenHeight * 0.2,
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15, vertical: screenHeight * 0.05),
            child: Text(
              "Your health, your knowledge! Explore expert tips for a better you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),

          Text(
            "HealthEd",
            style: GoogleFonts.rammettoOne(
              color: Colors.white,
              fontSize: screenWidth * 0.07,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: screenHeight * 0.15),

          SizedBox(
            width: screenWidth * 0.7,
            height: screenHeight * 0.08,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 243, 217, 216)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text(
                "START NOW",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
