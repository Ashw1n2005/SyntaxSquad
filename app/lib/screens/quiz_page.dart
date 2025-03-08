import 'package:flutter/material.dart';
import 'package:app/widgets/quiz_question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<String> questions=[
    "What is the best way to stay hydrated?",

    "Which of the following is a good habit for staying healthy?",

    "What is the main benefit of regular physical exercise?",

    "Why is it important to get enough sleep?"
  ];

  final List<List<String>> answers=[
    ["Drinking soda regularly",
    "Drinking plenty of water",
    "Only drinking when thirsty",
    "Avoiding liquids"],

    
   ["Sleeping late every night",
   " Eating a balanced diet",
    "Avoiding exercise completely",
   " Skipping breakfast daily"],

   
   [ "It increases stress",
    "Maintain a healthy body",
    "It weakens the immune system",
    "It reduces energy levels",],

    ["Better concentration and health",
    "It makes you feel tired all day",
    "It has no impact on health",
    "Increases the need for junk food"],

  ];
  Map<int, int?> selectedAnswers = {}; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz !"),
      ),
      backgroundColor: const Color.fromARGB(255, 243, 217, 216),
      body: SizedBox(
        height: MediaQuery.of(context).size.height-30,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 150,
                  color: Colors.white,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: QuizQuestion(
                          question: "${index + 1}. ${questions[index]}",
                          answers: [
                            (answers[index][0]),
                            (answers[index][1]),
                            (answers[index][2]),
                            (answers[index][3]),
                          ],
                          selectedIndex: selectedAnswers[index],
                          onAnswerSelected: (int selectedIndex) {
                            setState(() {
                              selectedAnswers[index] = selectedIndex;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
          
                
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 112, 238, 116)),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        print(selectedAnswers);  
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
