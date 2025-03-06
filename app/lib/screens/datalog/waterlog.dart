import 'package:app/screens/datalog/sleeplog.dart';
import 'package:app/widgets/next_button.dart';
import 'package:app/widgets/radiobox.dart';
import 'package:flutter/material.dart';

class WaterLogPage extends StatefulWidget {
  const WaterLogPage({super.key});

  @override
  State<WaterLogPage> createState() => _WaterLogPageState();
}

class _WaterLogPageState extends State<WaterLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 217, 216),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Image.asset("assets/images/waterques.png")),
          ), 

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: RadioBox(answers: {
              "Less than 1 litre": false,
              "1 to 2 litres": false,
              "2 to 3 litres": false,
              "3 to 4 litres": false,
              "More than 4 litres": false,
              }),
          ),

           Padding(
                padding: const EdgeInsets.only(left: 260,top: 8),
                child: NextButton(page: SleepLogPage(),),
              ),

        ],
      ),
    );
  }
}