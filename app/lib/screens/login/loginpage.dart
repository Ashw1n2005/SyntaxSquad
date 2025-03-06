import 'package:app/screens/initial_profie_entry_page.dart';
import 'package:app/screens/login/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 60, 93),
      body: Stack(
        children: [
          Positioned(
            top: -screenHeight * 0.1,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/loginsvg.png',
              height: screenHeight * 0.4,
              width: screenWidth * 0.9,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.4,
            left: screenWidth * 0.32,
            child: const Text(
              "Log In Now",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: SizedBox(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/user.png'),
                  hintText: "Username",
                  hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.55,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: SizedBox(
              height: 60,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/key.png'),
                  suffixIcon: Image.asset('assets/icons/Hide.png'),
                  hintText: "Password",
                  hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.63,
            left: screenWidth * 0.5,
            child: const Text(
              "Forgot password?",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          Positioned(
            top: screenHeight * 0.68,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 243, 217, 216),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InitialProfieEntryPage()),
                      );
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.77,
            left: screenWidth * 0.15,
            child: Row(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                ),
                GestureDetector(
                  child: Text(
                    "Sign Up.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}