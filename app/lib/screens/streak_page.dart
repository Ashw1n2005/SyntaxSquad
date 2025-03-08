import 'package:app/screens/quiz_page.dart';
import 'package:app/widgets/calendar.dart';
import 'package:flutter/material.dart';

class StreakPage extends StatefulWidget {
  const StreakPage({super.key});

  @override
  State<StreakPage> createState() => _StreakPageState();
}

class _StreakPageState extends State<StreakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height-60,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.amber)
                    ),
                    onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuizPage()),
                      );
                  }, child: Text("Start Quiz",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),)),
                ),
              ),
              StreakCalendar(),
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset("assets/images/daily_fire1.png"),
                      SizedBox(width: 20,),
                      Text("Current streak : 2",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Image.asset("assets/images/week_fire.jpg"),
                      SizedBox(width: 20,),
                      Text("Best Streak of the month : 3",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Image.asset("assets/images/atb_fire.jpg"),
                      SizedBox(width: 20,),
                      Text("All time best streak : 7",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}