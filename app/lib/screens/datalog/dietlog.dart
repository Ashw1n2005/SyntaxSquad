
import 'package:app/screens/dashboard.dart';
import 'package:app/widgets/next_button.dart';
import 'package:flutter/material.dart';

class DietLogPage extends StatefulWidget {
  const DietLogPage({super.key});

  @override
  State<DietLogPage> createState() => _DietLogPageState();
}

class _DietLogPageState extends State<DietLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 217, 216),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Image.asset("assets/images/mealques.png")),
          ), 

          Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 333,
                height: 150,
                child: TextField(
                  expands: true,  
                  maxLines: null, 
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none
                    ), 
                  ),
                ),
              ),
            ),

             Padding(
                padding: const EdgeInsets.only(left: 260,top: 8),
                child: NextButton(page: Dashboard(),),
              ),


        ],
      ),
    );
  }
}