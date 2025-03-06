import 'package:flutter/material.dart';

class QuizQuestion extends StatelessWidget {
  final String question;
  final List<String> answers;
  final int? selectedIndex;
  final Function(int) onAnswerSelected;

  const QuizQuestion({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedIndex,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 6, 0, 8),
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: answers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => onAnswerSelected(index),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? const Color.fromARGB(255, 113, 60, 93)
                            : const Color.fromARGB(255, 243, 217, 216),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(
                        child: Text(
                          answers[index],
                          style: TextStyle(
                            color: selectedIndex == index ? Colors.white : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
