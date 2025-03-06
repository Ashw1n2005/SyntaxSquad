import 'package:app/screens/initial_profie_entry_page.dart';
import 'package:app/screens/login/loginpage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 60, 93),
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/signupsvg.png',
            height: 437,
            width: 403,)
          ),
          Positioned(
            top: 323,
            left: 120,
            child: Text("Sign Up Now",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),)),
      
          Positioned(
            top: 370,
            left: 45,
            child: SizedBox(
              height: 60,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/user.png'),
                  hintText: "Full name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28)
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 444,
            left: 45,
            child: SizedBox(
              height: 60,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/user.png'),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28)
                  ),
                ),
              ),
            ),
          ),
           Positioned(
            top: 518,
            left: 45,
             child: SizedBox(
              height: 60,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/key.png'),
                  suffixIcon: Image.asset('assets/icons/Hide.png'),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28)
                  ),
                ),
              ),
                         ),
           ),
      
          Positioned(
            top: 599,
            left: 45,
            child: SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 243, 217, 216))
                ),
                onPressed:() {
                          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InitialProfieEntryPage()),
                );
              },
               child: Center(
                child: Text("Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                )),
            ),
          ),
      
          Positioned(
            top: 671,
            left: 60,
            child: Row(
              children: [
                Text("Already have an account? ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                 ),),
                GestureDetector(
                  child: Text("Log In.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                   ),),
                   onTap: () {
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                   },
                )
              ],
            ))
        ],
      ),
    );
  }
}