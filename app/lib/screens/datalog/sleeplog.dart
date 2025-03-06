import 'package:app/screens/datalog/dietlog.dart';
import 'package:app/widgets/next_button.dart';
import 'package:app/widgets/radiobox.dart';
import 'package:flutter/material.dart';

class SleepLogPage extends StatefulWidget {
  const SleepLogPage({super.key});

  @override
  State<SleepLogPage> createState() => _SleepLogPageState();
}

class _SleepLogPageState extends State<SleepLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 217, 216),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Image.asset("assets/images/sleepques.png")),
          ), 

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: RadioBox(answers: {
              "Less than 4 hours": false,
              "4 to 6 hours": false,
              "6 to 8 hours": false,
              "8 to 10 hours": false,
              "More than 10 hours": false,
              }),
          ),
           Padding(
                padding: const EdgeInsets.only(left: 260,top: 8),
                child: NextButton(page: DietLogPage(),),
              ),

        ],
      ),
    );
  }
}